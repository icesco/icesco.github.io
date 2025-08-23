---
exclude_from_nav: true
---

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Jekyll-based personal portfolio and blog website for Francesco Bianco (iCesco), hosted on GitHub Pages. The site focuses on iOS development, Swift programming, and showcases mobile apps.

## Development Commands

### Local Development
```bash
# Install dependencies
bundle install

# Serve the site locally with auto-reload
bundle exec jekyll serve

# Build the site for production
bundle exec jekyll build
```

### Jekyll Commands
- `bundle exec jekyll serve --drafts` - Include draft posts in development
- `bundle exec jekyll serve --livereload` - Enable live reload (if available)
- `bundle exec jekyll clean` - Clean generated files

## Project Structure

### Content Organization
- `_posts/` - Blog posts about iOS development and Swift
- `Projects/` - Individual project pages (markdown files)
- `about.markdown` - About page content
- `projects.md` - Projects listing page
- `index.markdown` - Homepage (uses 'home' layout)
- `404.html` - Custom 404 error page

### Assets and Media
- `assets/css/style.css` - Custom CSS styles
- `img/` - Screenshots and images for app showcases

### Configuration
- `_config.yml` - Jekyll site configuration
- `Gemfile` - Ruby dependencies
- Uses 'minima' theme with Jekyll 4.1.0
- Configured for GitHub Pages deployment

## Content Guidelines

### Blog Posts
- Located in `_posts/` directory
- Follow Jekyll naming convention: `YYYY-MM-DD-title.md`
- Focus on iOS development, Swift, and mobile development topics
- Use standard Jekyll front matter with layout, title, and date

### Project Pages
- Individual project files in `Projects/` directory
- Include screenshots from `img/` directory
- Follow the established format with app descriptions, features, and App Store links
- Use relative image paths with `{{ site.baseurl }}` prefix

### Front Matter Standards
```yaml
---
layout: page|post
title: "Page Title"
date: YYYY-MM-DD
permalink: /custom-url/ (optional)
---
```

## Site Configuration

- **Site Title**: iCesco's Blog
- **Description**: Francesco Bianco's portfolio website featuring iOS development blog
- **Theme**: Minima (Jekyll default)
- **Plugins**: jekyll-feed for RSS generation
- **Social**: Twitter (@cescotouch), GitHub (icesco)

## Deployment

This site is configured for GitHub Pages deployment. Changes pushed to the master branch will automatically build and deploy the site.