<script lang="ts" setup>
import type { Deals } from '#build/$rstore-directus-models';
import  DealsItem  from '#components';
import  DealsInviteItem  from '#components';
import type { ComputedOptions, ConcreteComponent, MethodOptions } from 'vue';


const props = defineProps<{ items: Deals[], component?: string | ConcreteComponent<{}, any, any, ComputedOptions, MethodOptions, {}, any>}>()
</script>
<template>
  <div class="deals-list">
    <component :is="props.component" :item="item" v-for="item in props.items" :key="item.id"/> 
    <!-- <DealsItem v-for="item in props.items" :key="item.id" :item="item" /> -->
  </div>
</template>
<style lang="postcss">
.deals-list {
  @apply flex w-full;
}
</style>