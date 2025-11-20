# setup-jekyll.ps1 - Install Jekyll and dependencies
# Usage: .\scripts\setup-jekyll.ps1

Write-Host "=== Jekyll Setup Script ===" -ForegroundColor Cyan
Write-Host ""

# Check if Ruby is installed
Write-Host "Checking for Ruby..." -ForegroundColor Yellow
if (-not (Get-Command ruby -ErrorAction SilentlyContinue)) {
    Write-Host "Error: Ruby is not installed" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Ruby from one of these sources:" -ForegroundColor Yellow
    Write-Host "  - RubyInstaller for Windows: https://rubyinstaller.org/" -ForegroundColor Cyan
    Write-Host "  - Chocolatey: choco install ruby" -ForegroundColor Cyan
    Write-Host "  - Scoop: scoop install ruby" -ForegroundColor Cyan
    Write-Host ""
    exit 1
}

$rubyVersion = ruby --version
Write-Host "✓ Ruby found: $rubyVersion" -ForegroundColor Green
Write-Host ""

# Check if Bundler is installed
Write-Host "Checking for Bundler..." -ForegroundColor Yellow
if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Bundler..." -ForegroundColor Yellow
    gem install bundler
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error: Failed to install Bundler" -ForegroundColor Red
        exit 1
    }
    Write-Host "✓ Bundler installed" -ForegroundColor Green
} else {
    $bundlerVersion = bundle --version
    Write-Host "✓ Bundler found: $bundlerVersion" -ForegroundColor Green
}
Write-Host ""

# Install Jekyll and dependencies
Write-Host "Installing Jekyll and GitHub Pages dependencies..." -ForegroundColor Yellow
Write-Host "This may take a few minutes..." -ForegroundColor Yellow
Write-Host ""

bundle install

if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "Error: Failed to install dependencies" -ForegroundColor Red
    Write-Host ""
    Write-Host "Common issues:" -ForegroundColor Yellow
    Write-Host "  - Missing development tools (install Ruby+Devkit version)" -ForegroundColor Cyan
    Write-Host "  - Permission issues (run as administrator)" -ForegroundColor Cyan
    Write-Host "  - Network issues (check your connection)" -ForegroundColor Cyan
    Write-Host ""
    exit 1
}

Write-Host ""
Write-Host "=== Setup Complete! ===" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Start the local server:" -ForegroundColor Cyan
Write-Host "     .\scripts\serve-local.ps1" -ForegroundColor White
Write-Host ""
Write-Host "  2. Open your browser to:" -ForegroundColor Cyan
Write-Host "     http://localhost:4000" -ForegroundColor White
Write-Host ""
Write-Host "  3. View the comparison tool at:" -ForegroundColor Cyan
Write-Host "     http://localhost:4000/compare" -ForegroundColor White
Write-Host ""
