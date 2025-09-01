<script lang="ts" setup>
import type { DealStages } from '#build/$rstore-directus-models';
const props = defineProps<{ item: DealStages }>();
</script>

<template>
  <Card class="flex flex-col deals-stage">
    <CardHeader>{{ props.item.title }}</CardHeader>
    <CardContent class="grow">{{ props.item.status }}</CardContent>
  </Card>
</template>

<style lang="postcss">
.deals-stage {
  @apply flex flex-col;
}
</style>