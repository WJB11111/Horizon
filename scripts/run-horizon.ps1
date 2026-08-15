[CmdletBinding()]
param(
    [ValidateRange(1, 168)]
    [int]$Hours = 24,
    [switch]$DisableEmail,
    [string]$ObsidianVaultPath = '',
    [string]$ObsidianFolder = ''
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
$horizonExe = Join-Path $projectRoot '.venv\Scripts\horizon.exe'
$logDirectory = Join-Path $projectRoot 'logs'
$runtimeConfigPath = $null
$obsidianExportScript = Join-Path $PSScriptRoot 'export-horizon-to-obsidian.ps1'
if ([string]::IsNullOrWhiteSpace($ObsidianFolder)) {
    $ObsidianFolder = "Horizon AI $([char]0x65E5)$([char]0x62A5)"
}

if (-not (Test-Path -LiteralPath $horizonExe)) {
    throw "Horizon environment not found at $horizonExe"
}

New-Item -ItemType Directory -Path $logDirectory -Force | Out-Null
$timestamp = Get-Date -Format 'yyyyMMdd-HHmmss'
$logPath = Join-Path $logDirectory "horizon-$timestamp.log"

$configArguments = @()
if ($DisableEmail) {
    $sourceConfigPath = Join-Path $projectRoot 'data\config.json'
    $runtimeConfigPath = Join-Path $projectRoot 'data\config.scheduler.json'
    $runtimeConfig = Get-Content -LiteralPath $sourceConfigPath -Raw -Encoding UTF8 |
        ConvertFrom-Json
    if ($null -ne $runtimeConfig.email) {
        $runtimeConfig.email.enabled = $false
    }
    $runtimeJson = $runtimeConfig | ConvertTo-Json -Depth 100
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($runtimeConfigPath, $runtimeJson, $utf8NoBom)
    $configArguments = @('--config', $runtimeConfigPath)
}

Push-Location $projectRoot
try {
    # Capture native stdout/stderr as text so PowerShell does not re-label
    # Horizon's rich stderr logging as NativeCommandError.
    $stdoutPath = "$logPath.stdout"
    $stderrPath = "$logPath.stderr"
    $argumentList = @('--hours', "$Hours", '--log-level', 'INFO') + $configArguments
    $process = Start-Process -FilePath $horizonExe -ArgumentList $argumentList `
        -WorkingDirectory $projectRoot -Wait -PassThru -NoNewWindow `
        -RedirectStandardOutput $stdoutPath -RedirectStandardError $stderrPath
    if (Test-Path -LiteralPath $stdoutPath) {
        Get-Content -LiteralPath $stdoutPath | Tee-Object -FilePath $logPath -Append
    }
    if (Test-Path -LiteralPath $stderrPath) {
        Get-Content -LiteralPath $stderrPath | Tee-Object -FilePath $logPath -Append
    }
    Remove-Item -LiteralPath $stdoutPath, $stderrPath -Force -ErrorAction SilentlyContinue
    if ($process.ExitCode -eq 0 -and -not [string]::IsNullOrWhiteSpace($ObsidianVaultPath)) {
        $summaryDate = Get-Date -Format 'yyyy-MM-dd'
        $summaryPath = Join-Path $projectRoot "data\summaries\horizon-$summaryDate-zh.md"
        & $obsidianExportScript `
            -SummaryPath $summaryPath `
            -VaultPath $ObsidianVaultPath `
            -FolderName $ObsidianFolder | Tee-Object -FilePath $logPath -Append
    }
    $exitCode = $process.ExitCode
}
finally {
    if ($null -ne $runtimeConfigPath -and (Test-Path -LiteralPath $runtimeConfigPath)) {
        Remove-Item -LiteralPath $runtimeConfigPath -Force
    }
    Pop-Location
}

exit $exitCode
