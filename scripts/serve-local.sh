#!/bin/bash
# serve-local.sh - Start Jekyll local development server
# Usage: ./scripts/serve-local.sh

set -e

echo "Starting Jekyll local server..."
echo "Site will be available at: http://localhost:4000"
echo "Comparison tool at: http://localhost:4000/compare"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Check if bundle is installed
if ! command -v bundle &> /dev/null; then
    echo "Error: Bundler is not installed. Install with: gem install bundler"
    exit 1
fi

# Install dependencies if needed
if [ ! -f "Gemfile.lock" ]; then
    echo "Installing Jekyll dependencies..."
    bundle install
fi

# Serve the site
bundle exec jekyll serve --livereload --drafts
