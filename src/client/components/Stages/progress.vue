<script lang="ts" setup>
import type { DealStages } from '#build/$rstore-directus-models';
const props = defineProps<{ items: DealStages[] }>()

</script>
<template>
  <div class="stages-progress">
    <div v-for="stage,si in items" class="flex rounded grow min-h-2 " :class="stage.status ==='draft' ? 'bg-secondary' : 'bg-emerald-700'"></div>
  </div>
</template>
<style lang="postcss">
.stages-progress {
  @apply w-full flex gap-2;
}
</style>