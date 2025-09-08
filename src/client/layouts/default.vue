<script setup lang="ts">
import { useAuth } from '../composables/useAuth';

// const isDark = useDark()
// const toggleDark = useToggle(isDark)
const auth = useAuth()
await auth.initializeAuth()
</script>

<template>
  <div
    id="__layout"
    class="flex flex-col items-center justify-center w-full h-full grow dark:text-white"
  >

    <slot></slot>
  </div>
</template>

<style lang="postcss">
html,
body,
#__nuxt,
#__layout {
  @apply !h-screen !w-screen;
}
</style>
