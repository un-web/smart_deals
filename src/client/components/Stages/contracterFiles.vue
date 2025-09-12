<script setup lang="ts">
import type { DealStages, DealStages_customer_files } from '#build/$rstore-directus-models';
import { map } from 'remeda';
import { useAuth } from '~/client/composables/useAuth';

const auth = useAuth()
const props = defineProps<{ item: DealStages }>()
const store = useStore()
const runtimeConfig = useRuntimeConfig()

const { data: filesIds, loading } = await store.DealStages_contracter_files.queryMany(props.item.contracter_files.length > 0 ? {
  filter: {
    id: {
      _in: props.item.contracter_files
    }
  }
}: { enabled: false })
console.log(filesIds.value)
const files = filesIds.value.length > 0 ? await auth.getFiles({
  filter: {
    id: {
      _in: filesIds.value.map((file) => file.directus_files_id)
    }
  }
}
) : []
</script>
<template>

  <div class="grid grid-cols-12 gap-4">
    <template v-if="filesIds.length > 0">
      <div class="overflow-hidden border rounded-lg max-w-40 border-muted" v-for="file in files" :key="file.id">
        <img :src="`${runtimeConfig.public.directusUrl}/assets/${file.id}`" class="object-cover aspect-square">
      </div>
    </template>
    <template v-else><span class="col-span-12">Отсутствуют</span></template>
  </div>
</template>
