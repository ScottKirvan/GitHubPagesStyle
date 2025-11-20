# Scripts Directory

Utility scripts for development, testing, and validation.

## Available Scripts

### Local Development

#### `serve-local.sh` / `serve-local.ps1`
Start Jekyll local development server with live reload.

**Usage:**
```bash
# Bash
./scripts/serve-local.sh

# PowerShell
.\scripts\serve-local.ps1
```

**Features:**
- Starts Jekyll server on http://localhost:4000
- Enables live reload for automatic browser refresh
- Includes draft posts
- Auto-installs dependencies if needed

**Requirements:**
- Ruby
- Bundler (`gem install bundler`)
- Jekyll (installed via Bundler)

---

### CSS Validation

#### `validate-css.sh` / `validate-css.ps1`
Validate CSS custom properties against Primer naming conventions.

**Usage:**
```bash
# Bash
./scripts/validate-css.sh

# PowerShell
.\scripts\validate-css.ps1
```

**Checks:**
- Extracts all CSS custom properties
- Validates Primer naming convention (`--[category]Color-*`)
- Identifies deprecated property patterns
- Basic syntax validation
- Common mistake detection

**Output:**
- List of non-Primer properties
- Deprecated patterns
- Syntax validation results
- Warnings for potential issues

---

### Contrast Validation

#### `check-contrast.sh`
Check color contrast ratios for accessibility compliance.

**Usage:**
```bash
./scripts/check-contrast.sh
```

**Requirements:**
- Node.js (for color contrast calculation tools)
- Optional: `wcag-contrast` or similar package

**Checks:**
- Background/foreground color pairs
- 7:1 minimum contrast ratio (Primer High Contrast requirement)
- WCAG AAA compliance

**Note:** Currently provides framework and manual verification links. Can be enhanced with automated contrast calculation tools.

---

## Adding New Scripts

### Naming Convention
- Use kebab-case: `script-name.sh` / `script-name.ps1`
- Provide both Bash and PowerShell versions when possible
- Add `.sh` extension for Bash scripts
- Add `.ps1` extension for PowerShell scripts

### Script Template

**Bash:**
```bash
#!/bin/bash
# script-name.sh - Brief description
# Usage: ./scripts/script-name.sh [options]

set -e  # Exit on error

echo "=== Script Name ==="
# Your script logic here
```

**PowerShell:**
```powershell
# script-name.ps1 - Brief description
# Usage: .\scripts\script-name.ps1 [options]

Write-Host "=== Script Name ===" -ForegroundColor Cyan
# Your script logic here
```

### Documentation
- Add script to this README
- Include usage examples
- List requirements
- Describe what it checks/does

---

## Future Script Ideas

### Testing
- `test-all-browsers.sh` - Cross-browser testing
- `screenshot-compare.sh` - Visual regression testing
- `lighthouse-audit.sh` - Performance and accessibility audit

### Validation
- `validate-html.sh` - HTML validation
- `check-links.sh` - Broken link checker
- `validate-markdown.sh` - Markdown linting

### Deployment
- `build-production.sh` - Production build
- `deploy-preview.sh` - Deploy to preview environment

### Utilities
- `optimize-images.sh` - Image optimization
- `generate-color-swatches.sh` - Generate color documentation
- `sync-primer-tokens.sh` - Fetch latest Primer tokens

---

## Troubleshooting

### Permission Denied (Bash)
Make scripts executable:
```bash
chmod +x scripts/*.sh
```

### Execution Policy (PowerShell)
Allow script execution:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Jekyll Not Found
Install dependencies:
```bash
gem install bundler
bundle install
```

### Node.js Tools Not Found
Install Node.js from: https://nodejs.org/

Then install required packages:
```bash
npm install -g wcag-contrast
npm install -g lighthouse
```

---

## Contributing

When adding new scripts:
1. Follow the naming convention
2. Add proper error handling
3. Include usage documentation
4. Provide both Bash and PowerShell versions if possible
5. Update this README
6. Test on both platforms when applicable
