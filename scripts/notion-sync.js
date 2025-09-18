import { Client } from '@notionhq/client';
import { NotionToMarkdown } from 'notion-to-md';
import fs from 'fs/promises';
import path from 'path';

const notion = new Client({ auth: process.env.NOTION_TOKEN });
const n2m = new NotionToMarkdown({ notionClient: notion });

const BLOG_DATABASE_ID = process.env.NOTION_BLOG_DATABASE_ID;

async function syncNotionBlog() {
  if (!BLOG_DATABASE_ID || !process.env.NOTION_TOKEN) {
    console.log('⚠️ Notion environment variables not set. Skipping sync.');
    return;
  }

  console.log('🔄 Syncing blog posts from Notion...');

  try {
    // Query the database for published posts
    const response = await notion.databases.query({
      database_id: BLOG_DATABASE_ID,
      filter: {
        property: 'Published',
        checkbox: {
          equals: true
        }
      },
      sorts: [
        {
          property: 'Date',
          direction: 'descending'
        }
      ]
    });

    // Ensure blog directory exists
    const blogDir = path.join(process.cwd(), 'src/content/blog');
    await fs.mkdir(blogDir, { recursive: true });

    // Process each post
    for (const page of response.results) {
      const { id } = page;
      const properties = page.properties;

      // Extract metadata
      const title = properties.Title?.title?.[0]?.plain_text || 'Untitled';
      const slug = properties.Slug?.rich_text?.[0]?.plain_text || 
                   title.toLowerCase().replace(/\s+/g, '-').replace(/[^\w-]/g, '');
      const description = properties.Description?.rich_text?.[0]?.plain_text || '';
      const date = properties.Date?.date?.start || new Date().toISOString().split('T')[0];
      const tags = properties.Tags?.multi_select?.map(tag => tag.name) || [];

      console.log(`📄 Processing: ${title}`);

      // Get page content and convert to markdown
      const mdblocks = await n2m.pageToMarkdown(id);
      const mdString = n2m.toMarkdownString(mdblocks);

      // Create frontmatter
      const frontmatter = `---
title: "${title}"
description: "${description}"
date: ${date}
tags: [${tags.map(tag => `"${tag}"`).join(', ')}]
draft: false
---

${mdString.parent}`;

      // Write to file
      const filename = `${slug}.md`;
      const filepath = path.join(blogDir, filename);
      await fs.writeFile(filepath, frontmatter, 'utf8');

      console.log(`✅ Synced: ${filename}`);
    }

    console.log(`🎉 Successfully synced ${response.results.length} posts from Notion!`);

  } catch (error) {
    console.error('❌ Error syncing from Notion:', error.message);
    process.exit(1);
  }
}

// Run the sync
syncNotionBlog();