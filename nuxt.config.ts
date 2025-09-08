// https://nuxt.com/docs/api/configuration/nuxt-config
import { join, resolve } from 'pathe'

// src dir
const rootDir = resolve(__dirname)
const srcDir = join(rootDir, 'src')
const clientDir = join(srcDir, 'client')
const serverDir = join(srcDir, 'server')
const componentsDir = join(clientDir, 'components')

export default defineNuxtConfig({
  // ssr: false,
   // Runtime Configuration
  //  ssr:false,
  runtimeConfig: {
    directusUrl: process.env.DIRECTUS_URL || "http://localhost:8055",
    directusAdminToken: process.env.DIRECTUS_ADMIN_TOKEN,
    public: {
      directusUrl:
        process.env.NUXT_PUBLIC_DIRECTUS_URL || "http://localhost:8055",
    },
  },

  // rstore-directus configuration
  rstoreDirectus: {
    url: process.env.DIRECTUS_URL || "http://localhost:8055",
    adminToken: process.env.DIRECTUS_ADMIN_TOKEN,
  },
  modules: [
    '@nuxtjs/partytown',
    '@nuxtjs/tailwindcss',
    'nuxt-content-assets',
    '@nuxtjs/mdc',
    '@nuxtjs/i18n',
    '@vueuse/nuxt',
    'shadcn-nuxt',
    '@nuxt/fonts',
    '@nuxt/content',
    '@nuxt/image',
    "@rstore/nuxt-directus",
    '@nuxt/icon',
    'nuxt-echarts',
    'nuxt-auth-utils',
    // 'nuxt-directus',
  ],

  compatibilityDate: '2024-08-15',

  rootDir,
  serverDir,
  srcDir,

  app: {
    layoutTransition: { mode: 'out-in', name: 'page' },
    pageTransition: { mode: 'out-in', name: 'page' },
  },

  icon: {
    collections: ['tabler','lucide'],
    mode: 'css',
    provider: 'iconify',
    serverBundle: 'local',
    cssLayer: 'base'
  },

  components: {
    dirs: [{ global: true, path: componentsDir }],
  },

  dir: {
    public: join(srcDir, 'public'),
    plugins: join(clientDir, 'plugins'),

    app: join(clientDir, 'app'),
    assets: join(clientDir, 'assets'),
    layouts: join(clientDir, 'layouts'),
    middleware: join(clientDir, 'middleware'),
    modules: join(clientDir, 'modules'),
    pages: join(clientDir, 'pages'),
  },

  typescript: {
    shim: true,
    strict: true,
    // typeCheck: true,
  },

  nitro: {
    debug: true,
    experimental: {
      asyncContext: true,
      database: true,
      tasks: true,
      typescriptBundlerResolution: true,
      wasm: true,
      websocket: true,
    },
    logging: {
      buildSuccess: true,
      compressedSizes: true,
    },
    rollupConfig: undefined,
    srcDir,
    timing: true,
    wasm: {
      esmImport: true,
      lazy: true,
    },
  },



  content: {
    experimental: {
      clientDB: true,
    },
    locales: ['ru', 'en'],
    navigation: {
      fields: [
        'title',
        'description',
        'image',
        'tags',
        'slug',
      ],
    },
    sources: {
      content: {
        base: join(srcDir, 'content'),
        driver: 'fs',
        prefix: '/content',
      },
    },
  },

  shadcn: {
    componentDir: join(clientDir, 'components', 'ui'),
    prefix: '',
  },

  image: {

    providers: {},
  },

  i18n: {
    customRoutes: 'config',
    defaultLocale: 'ru',
    // restructureDir: 'i18n',
    // lazy: true,
    routesNameSeparator: '___',
    strategy: 'no_prefix',

    detectBrowserLanguage: {
      alwaysRedirect: true,
      cookieCrossOrigin: true,
      cookieKey: 'lang',
      useCookie: true,
    },


    langDir: 'languages',

    bundle: {
      dropMessageCompiler: false,
      fullInstall: true,
      runtimeOnly: false,
    },

    locales: [
      {
        code: 'en',
        file: 'en.yml',
        language: 'en-US',
        name: 'English',
      },
      {
        code: 'ru',
        file: 'ru.yml',
        language: 'ru-RU',
        name: 'Русский',
      },
    ],
  },

  experimental: {
    appManifest: true,
    asyncContext: true,
    asyncEntry: true,
    crossOriginPrefetch: true,
    externalVue: true,
    headNext: true,
    payloadExtraction: true,
    restoreState: true,
    scanPageMeta: true,
    sharedPrerenderData: true,
    typedPages: false,
    viewTransition: false,
    writeEarlyHints: true,
  },

  devtools: {
    enabled: true,
  },
})