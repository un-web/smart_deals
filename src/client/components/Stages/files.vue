<script setup lang="ts">
import type { DealStages } from '#build/$rstore-directus-models';
import { useAuth } from '~/client/composables/useAuth';

const auth = useAuth()
const props = defineProps<{ item: DealStages }>()
const store = useStore()
const runtimeConfig = useRuntimeConfig()
const {data:filesIds,loading} = await store.DealStages_customer_files.queryMany({
  filter: {
    DealStages_id: {
      _eq: props.item.id,
    },
  },
})
const files = await auth.getFiles({
  filter: {
    id: {
      _in: filesIds.value.map(file => file.directus_files_id)
    }
  }
})
</script>
<template>
  <div>
    <h1>Files</h1>   
    <div class="max-w-40" v-for="file in files" :key="file.id"><img  :src="`${runtimeConfig.public.directusUrl}/assets/${file.id}`" ></div>
  </div>
</template>
