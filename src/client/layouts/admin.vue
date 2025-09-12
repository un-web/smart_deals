<script setup lang="ts">
import { Notifications } from '#components';
import { useAuth } from '../composables/useAuth';

const isDark = useDark()
const toggleDark = useToggle(isDark)
const auth = useAuth()
await auth.initializeAuth()
</script>

<template>
  <div id="__layout" class="flex flex-col items-center justify-center w-full h-full min-h-screen grow dark:text-white">
    <Suspense>
      <SidebarProvider>
        <AppSidebar />
        <SidebarInset>
          <header class="flex items-center justify-between h-16 gap-2 px-4 border-b shrink-0">
            <!-- <SidebarTrigger class="-ml-1" /> -->
            <!-- <Separator orientation="vertical" class="h-4 mr-2" /> -->
            <Breadcrumb>
              <BreadcrumbList>
                <BreadcrumbItem class="hidden md:block">
                  <BreadcrumbLink href="#">
                    Building Your Application
                  </BreadcrumbLink>
                </BreadcrumbItem>
                <BreadcrumbSeparator class="hidden md:block" />
                <BreadcrumbItem>
                  <BreadcrumbPage>Data Fetching</BreadcrumbPage>
                </BreadcrumbItem>
              </BreadcrumbList>
            </Breadcrumb>
            <div class="flex items-center gap-2">
              <Notifications :user="auth.user.value" />
              <Button
                class=" border border-gray-300 border-dashed rounded-full toggle-dark dark:border-gray-700 hover:border-gray-400 dark:hover:border-gray-600 top-4 right-4 z-[9999] text-foreground"
                type="menu" size="icon" variant="outline" @click="toggleDark()">
                <Icon v-if="isDark" name="tabler:sun" />
                <Icon v-else name="tabler:moon" />
              </Button>
            </div>
          </header>
          <template v-if="auth.user.value">
            <slot />
          </template>
        </SidebarInset>
      </SidebarProvider>
    </Suspense>
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
