<script lang="ts" setup>
import type { DealStages } from '#build/$rstore-directus-models';
import { findIndex } from 'remeda';
const props = defineProps<{ items: DealStages[] }>();
const isOpen = ref(false);
const store = useStore()

const currentStageIndex=computed(() =>
  findIndex(props.items, (stage) => stage.status === 'in_progress'))

console.log(props.items)
const removeOpen = ref(false)

const statuses = {
  pending: {
    bg: 'bg-muted',
    icon: 'lucide:clock',
  },
  in_progress: {
    bg: 'bg-sky-700',
    icon: 'lucide:play',
  },
  ready_for_review: {
    bg: 'bg-yellow-400',
    icon: 'lucide:eye',
  },
  accepted: {
    bg: 'bg-green-700',
    icon: 'lucide:check',
  },
  disputed: {
    bg: 'bg-rose-700',
    icon: 'lucide:messages-square',
  },
}

// const stageClass = (status:string)=>{
//   if(status === 'in_progress'){
//     return 'bg-sky-700'
//   }
//   if(status === 'pending'){
//     return 'bg-muted'
//   }
//   if(status === 'ready_for_review'){
//     return 'bg-yellow-400'
//   }
//   if(status === 'accepted'){
//     return 'bg-green-700 opacity-50'
//   }
//   if(status === 'disputed'){
//     return 'bg-rose-700'
//   }
// }
</script>

<template>
  <Accordion type="single" class="flex flex-col w-full" collapsible>
    <AccordionItem v-for="item,index in props.items" :key="item.id" :value="item.id"
      :disabled="item.status === 'accepted'">
      <AccordionTrigger class="px-4 font-normal">
        <div class="flex items-center justify-start gap-x-4">
          <!-- <div :class="statuses[item.status].bg" class="flex items-center justify-center w-8 h-8 rounded-full">
            <Icon :name="statuses[item.status].icon" class="w-4 h-4" />
          </div> -->
          <span>{{index+1}}. {{ item.title }}</span>
          <!-- <Badge>{{ item.status }}</Badge> -->
        </div>
      </AccordionTrigger>
      <AccordionContent class="flex flex-col gap-8 px-4">
        <div class="flex flex-col gap-2">
          <h1>Файлы заказчика</h1>
          <StagesCustomerFiles :item="item" />
        </div>
        <div class="flex flex-col gap-2">
          <h1>Файлы подрядчика</h1>
          <StagesContracterFiles :item="item" />
        </div>
      </AccordionContent>
    </AccordionItem>
  </Accordion>
</template>
