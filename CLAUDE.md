# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build and Development Commands

```bash
# Install dependencies
bundle install

# Run local development server
bundle exec jekyll serve

# Build for production
bundle exec jekyll build
```

## Tech Stack

- **Static Site Generator**: Jekyll 4.4.1
- **Theme**: Just The Docs 0.10.1
- **Language**: Ruby with Bundler
- **Deployment**: GitHub Pages via GitHub Actions (automatic on push to main)

## Architecture

This is a multi-project documentation hub for mobile game applications. The site uses the Just The Docs theme to provide a documentation/knowledge base layout.

### Content Structure

- `/games/` - Central hub for shared game policies, support, and marketing docs
- `/crapette/` - Crapette card game documentation with multiplayer help (EN/FR)
- `/flinch/` - Flinch card game rules (EN/FR)
- `/icons/` - Shared image assets (Discord, App Store buttons)

### Key Files

- `_config.yml` - Jekyll configuration (theme, title, includes)
- `Gemfile` - Ruby dependencies
- `app-ads.txt` - Ad exchange network configuration
- `CNAME` - Custom domain configuration

### Content Format

All content pages use Markdown with YAML frontmatter. The site supports multilingual content organized in `/en/` and `/fr/` subdirectories.
