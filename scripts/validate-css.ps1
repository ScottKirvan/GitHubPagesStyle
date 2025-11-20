# validate-css.ps1 - Validate CSS custom properties against Primer tokens (PowerShell)
# Usage: .\scripts\validate-css.ps1

$CSSFile = "assets/css/github-pages-style.css"
$PrimerTokens = "notes/primer-color-tokens.md"

Write-Host "=== CSS Validation Script ===" -ForegroundColor Cyan
Write-Host ""

# Check if files exist
if (-not (Test-Path $CSSFile)) {
    Write-Host "Error: CSS file not found: $CSSFile" -ForegroundColor Red
    exit 1
}

Write-Host "Checking CSS file: $CSSFile" -ForegroundColor Green
Write-Host ""

# Extract CSS custom properties
Write-Host "Extracting CSS custom properties..." -ForegroundColor Yellow
$CSSContent = Get-Content $CSSFile -Raw
$CSSVars = ([regex]::Matches($CSSContent, '--[a-zA-Z-]+:') | ForEach-Object { $_.Value.TrimEnd(':') } | Select-Object -Unique | Sort-Object)

Write-Host "Found $($CSSVars.Count) unique CSS custom properties" -ForegroundColor Green
Write-Host ""

# List properties that don't follow Primer naming convention
Write-Host "=== Properties NOT using Primer naming (--[category]Color-*) ===" -ForegroundColor Cyan
$NonPrimer = $CSSVars | Where-Object { $_ -notmatch "Color-" }
if ($NonPrimer) {
    $NonPrimer | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
} else {
    Write-Host "All properties follow Primer naming!" -ForegroundColor Green
}
Write-Host ""

# Check for old/deprecated property names
Write-Host "=== Checking for deprecated property patterns ===" -ForegroundColor Cyan
$Deprecated = $CSSVars | Where-Object { $_ -match "--(color|bg|text|border)-" }
if ($Deprecated) {
    Write-Host "Found deprecated patterns (should use Primer naming):" -ForegroundColor Yellow
    $Deprecated | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
} else {
    Write-Host "No deprecated patterns found!" -ForegroundColor Green
}
Write-Host ""

# Basic syntax validation
Write-Host "=== Basic Syntax Validation ===" -ForegroundColor Cyan
if ($CSSContent -match "--.*:.*#[0-9a-fA-F]{6}") {
    Write-Host "✓ Found hex color values" -ForegroundColor Green
} else {
    Write-Host "✗ No hex color values found" -ForegroundColor Red
}

if ($CSSContent -match ":root") {
    Write-Host "✓ :root selector found" -ForegroundColor Green
} else {
    Write-Host "✗ No :root selector found" -ForegroundColor Red
}

# Check for common mistakes
Write-Host ""
Write-Host "=== Checking for Common Mistakes ===" -ForegroundColor Cyan
if ($CSSContent -match "##") {
    Write-Host "⚠ Warning: Found double hash (##) - possible color typo" -ForegroundColor Yellow
}

if (($CSSContent -match "color: #") -and ($CSSContent -notmatch "var\(")) {
    Write-Host "⚠ Warning: Found hardcoded colors not using variables" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "=== Validation Complete ===" -ForegroundColor Cyan
