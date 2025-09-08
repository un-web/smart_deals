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
   <Accordion type="single" class="w-full flex flex-col" collapsible>
    <AccordionItem v-for="item,index in props.items" :key="item.id" :value="item.id"  :disabled="item.status === 'accepted'">
      <AccordionTrigger class="px-4 font-normal" >
        <div class="flex justify-start items-center gap-x-2">
          <div :class="statuses[item.status].bg" class="rounded-full w-8 h-8 flex items-center justify-center">
            <Icon :name="statuses[item.status].icon" class="w-4 h-4" />
          </div>
          {{index+1}}. {{ item.title }}
        </div>
      </AccordionTrigger>
      <AccordionContent class="px-4">
        {{ item.status }}
        <StagesFiles :item="item" />
      </AccordionContent>
    </AccordionItem>
  </Accordion>
</template>
