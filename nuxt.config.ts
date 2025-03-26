// https://nuxt.com/docs/api/configuration/nuxt-config
import { join, relative, resolve } from 'pathe'

// src dir
const rootDir = resolve(__dirname)
const srcDir = join(rootDir, 'src')
const clientDir = join(srcDir, 'client')
const serverDir = join(srcDir, 'server')

export default defineNuxtConfig({
  compatibilityDate: '2024-08-15',

  rootDir,
  serverDir,
  srcDir,

  app: {
    pageTransition: { name: 'page', mode: 'out-in' },
    layoutTransition: { name: 'page', mode: 'out-in' },
  },

  icon: {
    collections: ['tabler'],
    mode: 'css',
    provider: 'iconify',
    serverBundle: 'local',
  },
  dir: {
    public: join(srcDir, 'public'),
    // plugins: join(srcDir, 'plugins'),

    app: join(clientDir, 'app'),
    assets: join(clientDir, 'assets'),
    layouts: join(clientDir, 'layouts'),
    modules: join(clientDir, 'modules'),
    pages: join(clientDir, 'pages'),
    middleware: join(clientDir, 'middleware'),
  },

  typescript: {
    strict: true,
    shim: true,
    // typeCheck: true,
  },

  nitro: {
    srcDir,
    rollupConfig: undefined,
    experimental: {
      wasm: true,
      tasks: true,
      database: true,
      websocket: true,
      asyncContext: true,
      typescriptBundlerResolution: true,
    },
    wasm: {
      esmImport: true,
      lazy: true,
    },
    logging: {
      buildSuccess: true,
      compressedSizes: true,
    },
    timing: true,
    debug: true,
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

    '@nuxt/icon',
    'nuxt-echarts',
  ],

  content: {
    locales: ['ru', 'en'],
    sources: {
      content: {
        driver: 'fs',
        prefix: '/content',
        base: join(srcDir, 'content'),
      },
    },
    navigation: {
      fields: [
        'title',
        'description',
        'image',
        'tags',
        'slug',
      ],
    },
    experimental: {
      clientDB: true,
    },
  },

  shadcn: {
    prefix: '',
    componentDir: join(clientDir, 'components', 'ui'),
  },

  image: {

    providers: {
    },
  },

  i18n: {
    lazy: true,
    defaultLocale: 'ru',
    strategy: 'no_prefix',
    customRoutes: 'config',
    routesNameSeparator: '___',

    detectBrowserLanguage: {
      useCookie: true,
      alwaysRedirect: true,
      cookieKey: 'lang',
      cookieCrossOrigin: true,
    },

    langDir: 'languages',

    bundle: {
      fullInstall: true,
      runtimeOnly: false,
      dropMessageCompiler: false,
    },

    locales: [
      {
        name: 'English',
        language: 'en-US',
        file: 'en.yml',
        code: 'en',
      },
      {
        name: 'Русский',
        language: 'ru-RU',
        file: 'ru.yml',
        code: 'ru',
      },
    ],
  },

  experimental: {
    headNext: true,
    asyncEntry: true,
    typedPages: false,
    appManifest: true,
    externalVue: true,
    restoreState: true,
    scanPageMeta: true,
    asyncContext: true,
    viewTransition: false,
    writeEarlyHints: true,
    payloadExtraction: true,
    sharedPrerenderData: true,
    crossOriginPrefetch: true,
  },

  devtools: {
    enabled: true,
  },
})
