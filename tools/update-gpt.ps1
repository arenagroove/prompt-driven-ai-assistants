# PowerShell Script: Update GPT config, capabilities, and README version from .md and VERSION
# Run this script from inside the assistant folder

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# === Auto-detect assistant name from folder
$name = Split-Path -Leaf (Get-Location)

# === Paths
$mdFile         = "$name-GPT.md"
$jsonFile       = "$name-GPT-config.json"
$capabilitiesMd = "$name-GPT-capabilities.md"
$readmeFile     = "README.md"
$versionFile    = "VERSION"

# === Check files exist
if (!(Test-Path $mdFile)) {
    Write-Error "❌ Markdown file not found: $mdFile"
    exit 1
}
if (!(Test-Path $jsonFile)) {
    Write-Error "❌ JSON config not found: $jsonFile"
    exit 1
}

# === Read and escape Markdown
Write-Host "🔧 Syncing instructions from: $mdFile"
$rawMd = Get-Content -Raw -Encoding UTF8 -Path $mdFile
$escapedMd = $rawMd -replace '\\', '\\\\' -replace '"', '\"' -replace "`r?`n", '\n'

# === Update JSON
$json = Get-Content -Raw -Encoding UTF8 -Path $jsonFile | ConvertFrom-Json
$json.instructions = $escapedMd

# Ensure tool fields
if ($json.tools -eq $null) {
    $json | Add-Member -NotePropertyName "tools" -NotePropertyValue (@{})
}
foreach ($tool in @("web_browsing", "code_interpreter", "image_generation", "memory")) {
    if ($json.tools.PSObject.Properties.Name -notcontains $tool) {
        $json.tools | Add-Member -NotePropertyName $tool -NotePropertyValue $false
    }
}

# Write updated JSON
$json | ConvertTo-Json -Depth 20 | Set-Content -Path $jsonFile -Encoding UTF8
Write-Host "✅ JSON updated: $jsonFile"

# === Generate Capabilities markdown
Write-Host "`n📝 Updating Capabilities file..."
$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

$capMd = @"
# 🧠 Capabilities – $name

---

## ⚙️ Model & Provider

- **Model:** $($json.model.name)
- **Provider:** $($json.model.provider)

---

## 🔧 Enabled Tools

- ✅ Web Browsing: $($json.tools.web_browsing)
- ✅ Code Interpreter: $($json.tools.code_interpreter)
- ✅ DALL·E: $($json.tools.image_generation)
- ✅ Memory: $($json.tools.memory)

---

## 💬 Assistant Behavior

- **Welcome Message:**  
  _"$($json.welcome_message)"_

- **Conversation Starters:**
"@

foreach ($s in $json.conversation_starters) {
    $capMd += "`n  - $s"
}

$capMd += @"

---

## 📝 Instruction Source

- **Markdown File:** $mdFile
- **JSON Config Snapshot:** $jsonFile

---

## 🔁 Sync Metadata

- **Sync Method:** PowerShell script (`update-gpt.ps1`)
- **Last Updated:** $date

---

## 📎 Notes

- The \`.json\` config is for versioning and manual recreation in the GPT builder.
- The GPT builder does **not** support importing \`.json\` files directly.
"@

$capMd | Set-Content -Path $capabilitiesMd -Encoding UTF8
Write-Host "✅ Capabilities updated: $capabilitiesMd"

# === Update README.md versioning date
if (Test-Path $readmeFile) {
    Write-Host "`n📘 Updating README versioning date..."
    $today = Get-Date -Format "yyyy-MM-dd"
    $readmeLines = Get-Content -Path $readmeFile -Encoding UTF8

    $inVersioningBlock = $false
    $updatedLines = foreach ($line in $readmeLines) {
        if ($line -match '^## 🔄 Versioning') {
            $inVersioningBlock = $true
            $line
        } elseif ($inVersioningBlock -and $line -match '^\s*- \*\*Last updated:\*\*') {
            "- **Last updated:** $today"
        } elseif ($inVersioningBlock -and $line -notmatch '^\s*- ') {
            $inVersioningBlock = $false
            $line
        } else {
            $line
        }
    }

    # Warn if version is unchanged
    $versionLine = $readmeLines | Where-Object { $_ -match '^\s*- \*\*Current version:\*\*' }
    if ($versionLine -match 'v(\d+)\.(\d+)\.(\d+)') {
        $ver = $Matches[0]
        Write-Host "ℹ️ Current version: $ver — remember to bump if you changed assistant behavior." -ForegroundColor Yellow
    }

    $updatedLines | Set-Content -Path $readmeFile -Encoding UTF8
    Write-Host "✅ README.md versioning date updated: $today"
} else {
    Write-Host "ℹ️ README.md not found — skipping versioning update."
}
