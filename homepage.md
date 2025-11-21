---
layout: default
title: GitHub Primer Stylesheets for GitHub Pages
---

# GitHubPagesStyle

GitHub Primer Design System stylesheets for GitHub Pages - Dark High Contrast theme with official color tokens.

---

## Quick Links

- 🎨 [View Sample Page](sample) - Comprehensive markdown test page
- 🔍 [Comparison Tool](compare) - Visual comparison with GitHub rendering
- 📦 [GitHub Repository](https://github.com/ScottKirvan/GitHubPagesStyle)
- 📖 [README](https://github.com/ScottKirvan/GitHubPagesStyle/blob/main/README.md) - Full documentation

---

## Features

### Official GitHub Primer Tokens
Uses authentic color values from GitHub's Primer Design System (`@primer/primitives`):
- 7:1 minimum contrast ratio (WCAG AAA)
- Dark High Contrast theme (active)
- Light theme (coming soon)

### Comprehensive Styling
- All markdown elements supported
- Syntax highlighting with Rouge
- GitHub alerts/callouts
- Tables, lists, code blocks
- Responsive design

### Development Tools
- Side-by-side comparison tool
- Comprehensive test content
- Utility scripts for validation
- Jekyll/GitHub Pages ready

---

## Getting Started

### Using the Stylesheet

Add to your GitHub Pages site:

```html
<link rel="stylesheet" href="https://scottkirvan.github.io/GitHubPagesStyle/assets/css/github-pages-style.css">
```

Or copy [assets/css/github-pages-style.css](https://github.com/ScottKirvan/GitHubPagesStyle/blob/main/assets/css/github-pages-style.css) to your repository.

### Configuration

In your `_config.yml`:

```yaml
markdown: kramdown
kramdown:
  input: GFM
  syntax_highlighter: rouge
```

---

## Examples

### [Sample Page](sample)
Comprehensive test page demonstrating all supported markdown elements:
- Typography (headings, emphasis, links)
- Code blocks with syntax highlighting
- Tables with alignment
- Lists (ordered, unordered, task)
- Blockquotes and GitHub alerts
- Images and special characters

### [Comparison Tool](compare)
Visual validation tool for stylesheet accuracy:
- Side-by-side: Local vs GitHub rendering
- Optional custom URL comparison
- Theme switcher (framework ready)
- Multiple test pages

---

## Theme Switcher

```javascript
// Coming soon - framework in place
document.body.setAttribute('data-theme', 'dark-high-contrast');
// or
document.body.setAttribute('data-theme', 'light');
```

---

## Color System

Based on GitHub Primer Design System:

```css
/* Background */
--bgColor-default: #010409;
--bgColor-muted: #151b23;

/* Text */
--fgColor-default: #ffffff;
--fgColor-muted: #b7bdc8;

/* Borders */
--borderColor-default: #b7bdc8;

/* Semantic colors */
--fgColor-accent: #74b9ff;
--fgColor-success: #2bd853;
--fgColor-danger: #ff9492;
```

[View all tokens](https://github.com/ScottKirvan/GitHubPagesStyle/blob/main/assets/css/github-pages-style.css)

---

## Development

### Local Testing

```bash
# Clone repository
git clone https://github.com/ScottKirvan/GitHubPagesStyle.git
cd GitHubPagesStyle

# Install Jekyll (PowerShell)
.\scripts\setup-jekyll.ps1

# Start local server
.\scripts\serve-local.ps1

# Visit http://localhost:4000
```

### Validation

```bash
# Validate CSS tokens
.\scripts\validate-css.ps1

# Check contrast ratios
.\scripts\check-contrast.sh
```

---

## Project Status

- ✅ **v3.0.0** - Dark High Contrast with official Primer tokens
- ✅ Comparison tool infrastructure
- ✅ Comprehensive test content
- ✅ Utility scripts
- ⏳ Light theme (in progress)
- ⏳ Theme switcher implementation

---

## Contributing

Contributions welcome! Please:
- [File an issue](https://github.com/ScottKirvan/GitHubPagesStyle/issues/new)
- [Fork and submit a PR](https://github.com/ScottKirvan/GitHubPagesStyle/pulls)

See [CONTRIBUTING.md](https://github.com/ScottKirvan/GitHubPagesStyle/blob/main/CONTRIBUTING.md) for guidelines.

---

## Resources

- [GitHub Primer Design System](https://primer.style/)
- [Primer Primitives](https://primer.style/foundations/primitives/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Jekyll Documentation](https://jekyllrb.com/docs/)

---

## License

[MIT License](https://github.com/ScottKirvan/GitHubPagesStyle/blob/main/LICENSE.md)

**Author:** [Scott Kirvan](https://github.com/ScottKirvan)
**Based on:** GitHub Primer Design System
**Version:** 3.0.0
**Updated:** 2025-11-20

---

<div align="center">
  <p>
    <a href="https://github.com/ScottKirvan/GitHubPagesStyle/graphs/contributors">
      <img src="https://img.shields.io/github/contributors/ScottKirvan/GitHubPagesStyle" alt="contributors" />
    </a>
    <a href="">
      <img src="https://img.shields.io/github/last-commit/ScottKirvan/GitHubPagesStyle" alt="last update" />
    </a>
    <a href="https://github.com/ScottKirvan/GitHubPagesStyle/stargazers">
      <img src="https://img.shields.io/github/stars/ScottKirvan/GitHubPagesStyle" alt="stars" />
    </a>
    <a href="https://github.com/ScottKirvan/GitHubPagesStyle/blob/main/LICENSE.md">
      <img src="https://img.shields.io/github/license/ScottKirvan/GitHubPagesStyle.svg" alt="license" />
    </a>
  </p>
</div>
