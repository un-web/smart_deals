# Render Schema

A modern web application built with Vue 3 and shadcn-vue components.

## Tech Stack

- Nuxt
- TypeScript
- shadcn-vue

## Prerequisites

- Node.js (v16 or higher)
- Yarn

## Getting Started

1. Install dependencies:
```bash
yarn install
```

2. Start the development server:
```bash
yarn dev
```

## shadcn-vue Components

This project uses [shadcn-vue](https://www.shadcn-vue.com/), a collection of reusable components built with Vue 3 and Tailwind CSS.

### Adding New Components

To add a new shadcn-vue component:

1. Visit the [shadcn-vue documentation](https://www.shadcn-vue.com/docs/components/accordion)
2. Find the component you want to add
3. Run the add command:
```bash
npx shadcn-vue@latest add <component-name>
```

For example, to add a button component:
```bash
npx shadcn-vue@latest add button
```

### Using Components

Components are automatically added to your `components/ui` directory. You can import and use them in your Vue components like this:

```vue
<script setup lang="ts">
import { Button } from '@/components/ui/button'
</script>

<template>
  <Button>Click me</Button>
</template>
```

### Customizing Components

Components can be customized by:

1. Modifying the component file in `components/ui/`
2. Adjusting the theme in `tailwind.config.js`
3. Updating the global CSS variables in `src/assets/styles/globals.css`

### Available Components

The following components are currently available in this project:

- Button
- Input
- Card
- Dialog
- Dropdown Menu
- Form
- Label
- Select
- Switch
- Tabs
- Toast
- Tooltip

To see the full list of available components, visit the [shadcn-vue documentation](https://www.shadcn-vue.com/docs/components/accordion).

## Project Structure

```
src/
├── components/
│   ├── ui/          # shadcn-vue components
│   └── ...          # custom components
├── lib/             # utility functions and configurations
├── assets/          # static assets
```
