import { defineCollection, z } from 'astro:content';

const blog = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    description: z.string(),
    date: z.date(),
    draft: z.boolean().optional(),
    tags: z.array(z.string()).optional(),
  }),
});

const projects = defineCollection({
  type: 'content', 
  schema: z.object({
    title: z.string(),
    description: z.string(),
    appStore: z.string().optional(),
    github: z.string().optional(),
    image: z.string(),
    featured: z.boolean().optional(),
    technologies: z.array(z.string()),
    order: z.number().optional(),
  }),
});

export const collections = {
  blog,
  projects,
};