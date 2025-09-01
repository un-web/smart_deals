<script lang="ts" setup>
import type { DealStages } from '#build/$rstore-directus-models';

const props = defineProps<{ items: DealStages[] }>()
</script>

<template>
  <div class="stages-list">
    <StagesCollapsibleItem v-for="item,index in props.items" :key="item.id" :item="item" :order="index+1"/>
  </div>
</template>
<style lang="postcss">

.stages-list {
  @apply flex flex-col gap-4;
}
</style>