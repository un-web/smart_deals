<script lang="ts" setup>
import type { DealStages } from '#build/$rstore-directus-models';
const props = defineProps<{ items: DealStages[] }>()

</script>
<template>
  <div class="stages-progress">
    <div v-for="stage in items" class="flex grow rounded min-h-2 bg-emerald-700"></div>
  </div>
</template>