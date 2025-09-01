<script lang="ts" setup>
import type { Deals } from '#build/$rstore-directus-models';

const props = defineProps<{ items: Deals[] }>()
</script>
<template>
  <div class="deals-list">
    <DealsItem v-for="item in props.items" :key="item.id" :item="item" />
  </div>
</template>
<style lang="postcss">
.deals-list {
  @apply grid w-full grid-cols-4 gap-4;
}
</style>