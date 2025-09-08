<script setup lang="ts">
import type { Deals } from '#build/$rstore-directus-models';

const props = defineProps<{ deal: Deals }>()
</script>

<template>
  <Card class="flex flex-col">
    <CardHeader>
      <CardTitle>
        <div class="flex items-center justify-between">{{ deal?.title }}
          <Icon name="lucide:info" class="w-5 h-5" />
        </div>
      </CardTitle>
    </CardHeader>
    <CardContent class="flex flex-col grow">
      <CardDescription>{{ deal?.short_desc }}</CardDescription>
    </CardContent>
  </Card>
</template>