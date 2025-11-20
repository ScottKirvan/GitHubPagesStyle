# serve-local.ps1 - Start Jekyll local development server (PowerShell)
# Usage: .\scripts\serve-local.ps1

Write-Host "Starting Jekyll local server..." -ForegroundColor Green
Write-Host "Site will be available at: http://localhost:4000" -ForegroundColor Cyan
Write-Host "Comparison tool at: http://localhost:4000/compare" -ForegroundColor Cyan
Write-Host ""
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""

# Check if bundle is installed
if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
    Write-Host "Error: Bundler is not installed. Install with: gem install bundler" -ForegroundColor Red
    exit 1
}

# Install dependencies if needed
if (-not (Test-Path "Gemfile.lock")) {
    Write-Host "Installing Jekyll dependencies..." -ForegroundColor Yellow
    bundle install
}

# Serve the site
bundle exec jekyll serve --livereload --drafts
