<script lang="ts" setup>
import type { DealStages } from '#build/$rstore-directus-models';
const props = defineProps<{ item: DealStages,order?:number }>();
const isOpen = ref(false);
const store = useStore()
function handleRemove() {
  store.DealStages.delete(props.item.id).then(() => {
    removeOpen.value = false
  })
}

const removeOpen = ref(false)
</script>

<template>
  <Collapsible v-model:open="isOpen" class="w-full space-y-2 border rounded-lg">
    <div class="flex items-center justify-between py-2 pl-4 pr-2 space-x-2">
      <div class="flex items-center space-x-2">
        <span class="text-sm font-medium leading-none">{{props.order}}.</span>
        <h4 class="text-sm font-semibold">
          {{props.item.title}}
        </h4>
      </div>
      <div class="flex items-center gap-2">
        <AlertDialog v-model:open="removeOpen">
          <AlertDialogTrigger>
            <Button variant="ghost" size="sm" class="p-0 w-9">
              <Icon name="lucide:trash" class="w-4 h-4" />
            </Button>
          </AlertDialogTrigger>
          <AlertDialogContent>
            <AlertDialogHeader>
              <AlertDialogTitle>Вы уверены?</AlertDialogTitle>
              <AlertDialogDescription>
                Вы действительно хотите удалить этап сделки? Данные будут утеряны навсегда.
              </AlertDialogDescription>
            </AlertDialogHeader>
            <AlertDialogFooter>
              <AlertDialogAction>
                  Удалить
              </AlertDialogAction>
              <AlertDialogCancel>Отмена</AlertDialogCancel>
            </AlertDialogFooter>
          </AlertDialogContent>
        </AlertDialog>

        <CollapsibleTrigger as-child>
          <Button variant="ghost" size="sm" class="p-0 w-9">
            <Icon name="lucide:chevron-down" class="w-4 h-4" />
            <span class="sr-only">Toggle</span>
          </Button>
        </CollapsibleTrigger>
      </div>
    </div>
    <CollapsibleContent class="space-y-2">
      {{props.item.status}}
    </CollapsibleContent>
  </Collapsible>
</template>