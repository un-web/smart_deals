<script setup lang="ts">
import { Avatar, AvatarFallback, AvatarImage } from '@/client/components/ui/avatar'
import {
  Sidebar,
  SidebarContent,
  SidebarGroup,
  SidebarGroupContent,
  SidebarGroupLabel,
  SidebarHeader,
  SidebarMenu,
  SidebarMenuButton,
  SidebarMenuItem,
  type SidebarProps,
  SidebarRail,
} from '@/client/components/ui/sidebar'

const props = defineProps<SidebarProps>()

// This is sample data.
const data = {
  navMain: [
    {
      items: [
        {
          title: 'Сделки',
          url: '/deals',
        },
        {
          title: 'Завершенные',
          url: '/deals_archive',
        },
      ],
      title: 'Сделки',
      url: '#',
    },
    {
      items: [
        {
          title: 'Графики',
          url: '#',
        },
      ],
      title: 'Аналитика',
      url: '/analytics',
    },
    {
      items: [
        {
          title: 'Мои чаты',
          url: '/chats',
        },
        {
          title: 'Уведомления',
          url: '/notifications',
        }
      ],
      title: 'Сообщения',
      url: '#',
    },
  ]
}
async function logout() {
  useCookie('access_token').value = null
  await navigateTo('/login')
}
</script>

<template>
  <Sidebar v-bind="props">
    <SidebarHeader>
      <!-- <VersionSwitcher
        :versions="data.versions"
        :default-version="data.versions[0]"
      /> -->
      <!-- <SearchForm /> -->
      <DropdownMenu>
        <DropdownMenuTrigger class="self-start">
          <Avatar>
            <!-- <AvatarImage src="https://github.com/unovue.png" alt="@unovue" /> -->
            <AvatarFallback>CN</AvatarFallback>
          </Avatar>
        </DropdownMenuTrigger>
        <DropdownMenuContent>
          <DropdownMenuLabel>My Account</DropdownMenuLabel>
          <DropdownMenuSeparator />
          <DropdownMenuItem>Profile</DropdownMenuItem>
          <DropdownMenuItem>Billing</DropdownMenuItem>
          <DropdownMenuItem>Team</DropdownMenuItem>
          <DropdownMenuItem @click="logout">Logout</DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>

    </SidebarHeader>
    <SidebarContent>
      <SidebarGroup v-for="item in data.navMain" :key="item.title">
        <SidebarGroupLabel>{{ item.title }}</SidebarGroupLabel>
        <SidebarGroupContent>
          <SidebarMenu>
            <SidebarMenuItem v-for="childItem in item.items" :key="childItem.title">
              <SidebarMenuButton as-child :is-active="childItem.isActive">
                <a :href="childItem.url">{{ childItem.title }}</a>
              </SidebarMenuButton>
            </SidebarMenuItem>
          </SidebarMenu>
        </SidebarGroupContent>
      </SidebarGroup>
    </SidebarContent>
    <SidebarRail />
  </Sidebar>
</template>
