<script setup lang="ts">
import type { Deals } from '#build/$rstore-directus-models';

const { t } = useI18n()


definePageMeta({
  // set custom layout
  layout: 'admin',
  middleware: ['auth'],
})







</script>

<template>
  <div class="flex flex-col items-stretch p-4 bg-background text-foreground">





    <h1 class="mb-4 text-4xl font-bold">
      {{ t('pages.index.welcome') }}
    </h1>
    <p class="mb-8 text-xl">
      {{ t('pages.index.start') }} <code class="p-1 rounded bg-muted">pages/index.vue</code>
    </p>
    <!-- <pre>{{ items }}</pre> -->
  </div>
</template>
