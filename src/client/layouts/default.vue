<script setup lang="ts">
const isDark = useDark()
const toggleDark = useToggle(isDark)
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
