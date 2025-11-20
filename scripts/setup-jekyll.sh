#!/bin/bash
# setup-jekyll.sh - Install Jekyll and dependencies
# Usage: ./scripts/setup-jekyll.sh

set -e

echo "=== Jekyll Setup Script ==="
echo ""

# Check if Ruby is installed
echo "Checking for Ruby..."
if ! command -v ruby &> /dev/null; then
    echo "Error: Ruby is not installed"
    echo ""
    echo "Please install Ruby from your package manager:"
    echo "  - Ubuntu/Debian: sudo apt-get install ruby-full"
    echo "  - macOS: brew install ruby"
    echo "  - Or visit: https://www.ruby-lang.org/en/downloads/"
    echo ""
    exit 1
fi

RUBY_VERSION=$(ruby --version)
echo "✓ Ruby found: $RUBY_VERSION"
echo ""

# Check if Bundler is installed
echo "Checking for Bundler..."
if ! command -v bundle &> /dev/null; then
    echo "Installing Bundler..."
    gem install bundler
    echo "✓ Bundler installed"
else
    BUNDLER_VERSION=$(bundle --version)
    echo "✓ Bundler found: $BUNDLER_VERSION"
fi
echo ""

# Install Jekyll and dependencies
echo "Installing Jekyll and GitHub Pages dependencies..."
echo "This may take a few minutes..."
echo ""

bundle install

echo ""
echo "=== Setup Complete! ==="
echo ""
echo "Next steps:"
echo "  1. Start the local server:"
echo "     ./scripts/serve-local.sh"
echo ""
echo "  2. Open your browser to:"
echo "     http://localhost:4000"
echo ""
echo "  3. View the comparison tool at:"
echo "     http://localhost:4000/compare"
echo ""
