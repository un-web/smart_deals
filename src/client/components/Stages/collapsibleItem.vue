<script lang="ts" setup>
import type { DealStages } from '#build/$rstore-directus-models';
const props = defineProps<{ item: DealStages,order:number }>();
const isOpen = ref(false);
</script>

<template>
  <Collapsible
    v-model:open="isOpen"
    class="w-[350px] space-y-2"
  >
    <div class="flex items-center justify-between space-x-2 px-4">
      <div class="flex items-center space-x-2">
        <span class="text-sm font-medium leading-none">{{props.order}}.</span>
        <h4 class="text-sm font-semibold">
          {{props.item.title}}
        </h4>
      </div>
      <CollapsibleTrigger as-child>
        <Button variant="ghost" size="sm" class="w-9 p-0">
          <Icon name="lucide:chevron-down" class="h-4 w-4" />
          <span class="sr-only">Toggle</span>
        </Button>
      </CollapsibleTrigger>
    </div>   
    <CollapsibleContent class="space-y-2">
      {{props.item.status}}
    </CollapsibleContent>
  </Collapsible>
</template>