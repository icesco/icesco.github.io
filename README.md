# iCesco's Portfolio & Blog

A modern portfolio and blog built with **Astro** and integrated with **Notion** for seamless content management.

## ✨ Features

- 🚀 **Astro** - Lightning fast static site generation
- 🎨 **Tailwind CSS** - Beautiful, responsive design
- 📝 **Notion Integration** - Write articles in Notion, auto-sync to the site
- 🏗️ **Content Collections** - Type-safe content management
- 📱 **Mobile-First** - Responsive design that works everywhere
- 🌙 **Dark Mode Ready** - Built-in dark mode support
- ⚡ **GitHub Pages** - Automated deployment with GitHub Actions

## 🚀 Project Structure

```text
/
├── public/
│   └── images/           # Project images and assets
├── src/
│   ├── content/
│   │   ├── blog/         # Blog posts (synced from Notion)
│   │   └── projects/     # Project showcases
│   ├── layouts/
│   │   └── BaseLayout.astro
│   ├── pages/
│   │   ├── index.astro   # Homepage
│   │   ├── about.astro   # About page
│   │   ├── projects.astro # Projects listing
│   │   ├── blog.astro    # Blog listing
│   │   └── blog/[...slug].astro # Individual blog posts
│   └── styles/
├── scripts/
│   └── notion-sync.js    # Notion content sync script
└── .github/workflows/
    └── deploy.yml        # GitHub Pages deployment
```

## 🧞 Commands

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Installs dependencies                            |
| `npm run dev`             | Starts local dev server at `localhost:4321`      |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |
| `npm run sync:notion`     | Sync content from Notion (requires API keys)     |
| `npm run build:full`      | Sync Notion content and build                    |

## 🔧 Notion Setup

To enable Notion integration:

1. Create a Notion integration at [notion.so/my-integrations](https://www.notion.so/my-integrations)
2. Create a database in Notion with these properties:
   - **Title** (Title)
   - **Slug** (Rich Text) 
   - **Description** (Rich Text)
   - **Date** (Date)
   - **Published** (Checkbox)
   - **Tags** (Multi-select)
3. Share your database with your integration
4. Set environment variables:
   ```bash
   NOTION_TOKEN=your_integration_token
   NOTION_BLOG_DATABASE_ID=your_database_id
   ```

## 🚢 Deployment

This site automatically deploys to GitHub Pages when changes are pushed to the `master` branch. The workflow also runs daily at 8 AM UTC to sync any new Notion content.

### GitHub Secrets Required:
- `NOTION_TOKEN` - Your Notion integration token
- `NOTION_BLOG_DATABASE_ID` - Your Notion database ID

## 🎯 About

This is Francesco Bianco's personal portfolio showcasing iOS development projects and sharing thoughts on Swift, SwiftUI, and mobile development.
