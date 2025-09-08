<script setup lang="ts">
import type { DealStages, DealStages_customer_files } from '#build/$rstore-directus-models';
import { Icon } from '#components';
import { map } from 'remeda';
import { useAuth } from '~/client/composables/useAuth';

const auth = useAuth()
const props = defineProps<{ item: DealStages }>()
const store = useStore()
const runtimeConfig = useRuntimeConfig()

const { data: filesIds, loading } = await store.DealStages_customer_files.queryMany({
  filter: {
    id: {
      _in: props.item.customer_files
    }
  }
})

const files = await auth.getFiles( {
  filter: {
    id: {
      _in: filesIds.value.map((file) => file.directus_files_id)
    }
  }
}
)
</script>
<template>

  <div class="grid grid-cols-12 gap-4">
    <template v-if="filesIds.length>0">
      <div class="overflow-hidden border rounded-lg max-w-40 border-muted" v-for="file in files" :key="file.id">
        <img :src="`${runtimeConfig.public.directusUrl}/assets/${file.id}`" class="object-cover aspect-square">
      </div>
    </template>
    <div
      class="flex items-center justify-center overflow-hidden transition border rounded-lg cursor-pointer max-w-40 text-border border-muted hover:border-foreground hover:text-foreground">
      <Icon name="lucide:image-plus" class="w-10 h-10 " />
    </div>
    <!-- <template v-else>Файлы отсутствуют</template> -->
  </div>
</template>
