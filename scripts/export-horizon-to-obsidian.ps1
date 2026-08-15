[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$SummaryPath,
    [Parameter(Mandatory = $true)]
    [string]$VaultPath,
    [string]$FolderName = '',
    [switch]$Force
)

$ErrorActionPreference = 'Stop'
$resolvedSummaryPath = (Resolve-Path -LiteralPath $SummaryPath).Path
$resolvedVaultPath = (Resolve-Path -LiteralPath $VaultPath).Path
$obsidianConfigPath = Join-Path $resolvedVaultPath '.obsidian'
$dailyLabel = "$([char]0x65E5)$([char]0x62A5)"
if ([string]::IsNullOrWhiteSpace($FolderName)) {
    $FolderName = "Horizon AI $dailyLabel"
}

if (-not (Test-Path -LiteralPath $obsidianConfigPath -PathType Container)) {
    throw "Obsidian vault not found at $resolvedVaultPath"
}

$summaryFileName = [System.IO.Path]::GetFileName($resolvedSummaryPath)
$dateMatch = [regex]::Match($summaryFileName, '(?<date>\d{4}-\d{2}-\d{2})')
if (-not $dateMatch.Success) {
    throw "Could not determine the summary date from $summaryFileName"
}
$summaryDate = $dateMatch.Groups['date'].Value

$destinationDirectory = Join-Path $resolvedVaultPath $FolderName
New-Item -ItemType Directory -Path $destinationDirectory -Force | Out-Null
$destinationPath = Join-Path $destinationDirectory "$summaryDate.md"
if ((Test-Path -LiteralPath $destinationPath) -and -not $Force) {
    Write-Output "Obsidian note already exists; leaving it unchanged: $destinationPath"
    return
}

$summary = Get-Content -LiteralPath $resolvedSummaryPath -Raw -Encoding UTF8
$summary = [regex]::Replace(
    $summary,
    '\A---\r?\n.*?\r?\n---\r?\n+',
    '',
    [System.Text.RegularExpressions.RegexOptions]::Singleline
)
$frontMatter = @"
---
title: "Horizon AI $dailyLabel - $summaryDate"
date: $summaryDate
source: Horizon
tags:
  - AI$dailyLabel
---

"@
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText(
    $destinationPath,
    $frontMatter + $summary.TrimStart(),
    $utf8NoBom
)

Write-Output "Exported Horizon summary to Obsidian: $destinationPath"
