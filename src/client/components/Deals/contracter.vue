<script setup lang="ts">
import { nanoid } from 'nanoid'
import { toTypedSchema } from '@vee-validate/zod';
import { useForm } from "vee-validate"
import * as z from "zod"
import { useToast } from '@/client/components/ui/toast/use-toast'
import type { directus_users, Deals } from '#build/$rstore-directus-models';
import { readItems, readRoles, readRole, readUsers, readMe } from '@directus/sdk';
import { getRoleByName } from '~/client/utils';
import { find } from 'remeda'
import { useAuth } from '~/client/composables/useAuth';

const props = defineProps<{
  deal: Deals
}>()
const store = useStore()
const auth = useAuth()
const { toast } = useToast()
const [viewMode, toggleViewMode] = useToggle(false)



const user = await auth.getUser(props.deal.executor_id)

</script>
<template>
  <Dialog v-model:open="viewMode" v-if="user">
    <DialogTrigger as-child>
      <Card class="flex flex-col cursor-pointer hover:bg-secondary" @click="toggleViewMode(true)">
        <CardHeader>
          <CardTitle>
            <div class="flex items-center justify-between">
              <div>
                Подрядчик
              </div>
              <Icon name="lucide:hammer" class="w-5 h-5" />
            </div>
          </CardTitle>
        </CardHeader>
        <CardContent class="flex flex-col grow">

              <div class="flex gap-2">
                <div v-if="user">
                  {{ user.first_name }} {{ user.last_name }}
                </div>
                <!-- <Badge v-if="props.deal.invitation_accepted">Участие подтверждено</Badge>
                <Badge v-else>Ожидаем ответа</Badge> -->
              </div>
        </CardContent>
      </Card>
    </DialogTrigger>
    <DialogContent class="sm:max-w-[425px]">
      <DialogHeader>
        <DialogTitle>Заказчик</DialogTitle>
      </DialogHeader>
      <div class="flex items-center justify-between gap-1">
        <Label>Имя</Label>
        <div>{{ user.first_name }}</div>
      </div>
      <div class="flex items-center justify-between gap-1">
        <Label>Фамилия</Label>
        <div>{{ user.last_name ?? '--' }}</div>
      </div>
      <div class="flex items-center justify-between gap-1">
        <Label>Email</Label>
        <div>{{ user.email}}</div>
      </div>
      <DialogFooter>
        <!-- <Button variant="outline" class="mr-auto" @click="handleCleanInvitation()">
          Сменить заказчика
        </Button> -->
        <DialogClose>
          <Button >
            Закрыть
          </Button>
        </DialogClose>
      </DialogFooter>
    </DialogContent>
  </Dialog>
</template>