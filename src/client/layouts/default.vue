<script setup lang="ts">
const isDark = useDark()
const toggleDark = useToggle(isDark)
</script>

<template>
  <div
    id="__layout"
    class="flex flex-col items-center justify-center w-full h-full text-center grow dark:text-white"
  >
    <ClientOnly>
      <Button
        class="absolute border border-gray-300 border-dashed rounded-full dark:border-gray-700 hover:border-gray-400 dark:hover:border-gray-600 top-4 right-4"
        type="menu"
        size="icon"
        variant="outline"
        @click="toggleDark()"
      >
        <Icon v-if="isDark" name="tabler:sun" />
        <Icon v-else name="tabler:moon" />
      </Button>
    </ClientOnly>
    <slot />
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
