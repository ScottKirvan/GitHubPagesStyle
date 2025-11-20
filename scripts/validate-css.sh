#!/bin/bash
# validate-css.sh - Validate CSS custom properties against Primer tokens
# Usage: ./scripts/validate-css.sh

set -e

CSS_FILE="assets/css/github-pages-style.css"
PRIMER_TOKENS="notes/primer-color-tokens.md"

echo "=== CSS Validation Script ==="
echo ""

# Check if files exist
if [ ! -f "$CSS_FILE" ]; then
    echo "Error: CSS file not found: $CSS_FILE"
    exit 1
fi

echo "Checking CSS file: $CSS_FILE"
echo ""

# Extract CSS custom properties
echo "Extracting CSS custom properties..."
CSS_VARS=$(grep -o "\-\-[a-zA-Z-]*:" "$CSS_FILE" | sed 's/:$//' | sort -u)

echo "Found $(echo "$CSS_VARS" | wc -l) unique CSS custom properties"
echo ""

# List properties that don't follow Primer naming convention
echo "=== Properties NOT using Primer naming (--[category]Color-*) ==="
echo "$CSS_VARS" | grep -v "Color-" || echo "All properties follow Primer naming!"
echo ""

# Check for old/deprecated property names
echo "=== Checking for deprecated property patterns ==="
DEPRECATED=$(echo "$CSS_VARS" | grep -E "\-\-(color|bg|text|border)\-" || true)
if [ -n "$DEPRECATED" ]; then
    echo "Found deprecated patterns (should use Primer naming):"
    echo "$DEPRECATED"
else
    echo "No deprecated patterns found!"
fi
echo ""

# Basic syntax validation
echo "=== Basic Syntax Validation ==="
if grep -q "^[[:space:]]*--.*:.*#[0-9a-fA-F]\{6\}" "$CSS_FILE"; then
    echo "✓ Found hex color values"
else
    echo "✗ No hex color values found"
fi

if grep -q "^[[:space:]]*:root" "$CSS_FILE"; then
    echo "✓ :root selector found"
else
    echo "✗ No :root selector found"
fi

# Check for common mistakes
echo ""
echo "=== Checking for Common Mistakes ==="
if grep -q "##" "$CSS_FILE"; then
    echo "⚠ Warning: Found double hash (##) - possible color typo"
fi

if grep -q "color: #" "$CSS_FILE" | grep -v "var("; then
    echo "⚠ Warning: Found hardcoded colors not using variables"
fi

echo ""
echo "=== Validation Complete ==="
