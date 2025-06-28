# PowerShell Script: Update GPT config instructions from .md file
# Usage:
# ./update-gpt-config.ps1 -MarkdownPath "..\your-folder\AssistantName-GPT.md" -JsonPath "..\your-folder\AssistantName-GPT-config.json"

param (
    [Parameter(Mandatory = $true)]
    [string]$MarkdownPath,

    [Parameter(Mandatory = $true)]
    [string]$JsonPath
)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Write-Host "🔍 Reading Markdown: $MarkdownPath"
Write-Host "🔍 Reading JSON config: $JsonPath"

if (!(Test-Path $MarkdownPath)) {
    Write-Error "❌ Markdown file not found: $MarkdownPath"
    exit 1
}
if (!(Test-Path $JsonPath)) {
    Write-Error "❌ JSON file not found: $JsonPath"
    exit 1
}

# Read and escape Markdown content for JSON embedding
$raw = Get-Content -Raw -Path $MarkdownPath
$escaped = $raw -replace '\\', '\\\\' -replace '"', '\"' -replace "`r?`n", '\n'

# Load and update the JSON config
$json = Get-Content -Raw -Path $JsonPath | ConvertFrom-Json
$json.instructions = $escaped

# Output updated JSON with proper formatting
$json | ConvertTo-Json -Depth 20 | Set-Content -Path $JsonPath -Encoding UTF8

Write-Host "✅ Updated '$JsonPath' with instructions from '$MarkdownPath'"

