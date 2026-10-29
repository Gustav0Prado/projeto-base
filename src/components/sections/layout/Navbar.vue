<script setup lang="ts">
import { computed, ref } from 'vue';
import { RouterLink, useRoute } from 'vue-router';

const route = useRoute();

// route.path is relative to the Vue Router base, so it can be compared
// directly with the paths in links (e.g. "/about").
const active = computed(() => route.path);

const sidebarState = ref(false);
const hamburguerState = ref(true);
const itemSelected = ref('');

const baseUrl = import.meta.env.BASE_URL;
const hamburgerImage = `${baseUrl}assets/hamburger.png`;
const sidebarCloseImage = `${baseUrl}assets/sidebar-close.png`;

const links = [
  {
    name: 'Home',
    link: '/',
  },
  {
    name: 'About',
    link: '/about',
  },
  {
    name: 'Services',
    link: '/services',
    sublinks: [
      { name: 'Web Design', sublink: '/services/web-design' },
      { name: 'eCommerce', sublink: '/services/ecommerce' },
      { name: 'Branding', sublink: '/services/branding' },
      { name: 'API', sublink: '/services/api' },
    ],
  },
  {
    name: 'Dropdown',
    link: '/dropdown',
    sublinks: [
      { name: 'HTML5', sublink: '/dropdown/html5' },
      { name: 'CSS3', sublink: '/dropdown/css3' },
      { name: 'SASS', sublink: '/dropdown/jquery' },
      { name: 'jQuery', sublink: '/dropdown/jquery' },
    ],
  },
  {
    name: 'Contact',
    link: '/contact',
  },
];

function showSidebar() {
  sidebarState.value = true;
  hamburguerState.value = false;
}

function showHamburguer() {
  sidebarState.value = false;
  hamburguerState.value = true;
}

function closeSidebar() {
  showHamburguer();
  itemSelected.value = '';
}

function toggleDropdown(name: string) {
  itemSelected.value = itemSelected.value === name ? '' : name;
}
</script>

<template>
  <nav
    class="absolute w-full flex flex-row justify-between py-5 px-10 bg-transparent"
  >
    <RouterLink class="text-xl text-white font-bold" to="/" @click="closeSidebar">
      GREATNESS.
    </RouterLink>

    <!-- Lista de itens em telas grandes -->
    <ul
      id="navbar_right"
      class="hidden md:flex flex-row gap-10 text-white"
    >
      <li v-for="link in links" :key="link.name">
        <div v-if="link.link === active">
          <RouterLink
            :to="link.link"
            @mouseenter="itemSelected = link.name"
            @click="itemSelected = ''"
          >
            {{ link.name }}
          </RouterLink>

          <transition name="dropdown">
            <ul
              v-show="link.sublinks && itemSelected === link.name"
              class="px-5"
            >
              <li v-for="subl in link.sublinks" :key="subl.name">
                <RouterLink
                  :to="subl.sublink"
                  class="opacity-40 hover:opacity-100 transition-opacity duration-500"
                  @click="itemSelected = ''"
                >
                  {{ subl.name }}
                </RouterLink>
              </li>
            </ul>
          </transition>
        </div>

        <div v-else>
          <RouterLink
            :to="link.link"
            class="opacity-50 hover:opacity-100 transition-opacity duration-500"
            @mouseenter="itemSelected = link.name"
          >
            {{ link.name }}
          </RouterLink>

          <transition name="dropdown">
            <ul
              v-show="link.sublinks && itemSelected === link.name"
              class="rounded-xl absolute top-12 py-2 px-5 bg-gray-200"
            >
              <li
                v-for="subl in link.sublinks"
                :key="subl.name"
                class="font-thin text-black"
              >
                <RouterLink
                  :to="subl.sublink"
                  class="opacity-40 hover:opacity-100 transition-opacity duration-500"
                  @click="itemSelected = ''"
                >
                  {{ subl.name }}
                </RouterLink>
              </li>
            </ul>
          </transition>
        </div>
      </li>
    </ul>

    <!-- Menu hamburguer em telas pequenas -->
    <button
      v-show="hamburguerState"
      id="ham_menu"
      type="button"
      aria-label="Abrir menu"
      class="block md:hidden hover:cursor-pointer"
      @click="showSidebar"
    >
      <img :src="hamburgerImage" alt="" class="w-8" />
    </button>

    <!-- Overlay da sidebar -->
    <div
      v-show="sidebarState"
      class="fixed inset-0 bg-black opacity-70 z-10"
      @click="showHamburguer"
    />

    <!-- Sidebar -->
    <transition name="slide">
      <div
        v-if="sidebarState"
        id="sidebar"
        class="flex flex-col items-end px-8 py-5 bg-black fixed right-0 top-0 h-full w-60 z-20"
      >
        <button
          type="button"
          aria-label="Fechar menu"
          class="hover:cursor-pointer"
          @click="showHamburguer"
        >
          <img :src="sidebarCloseImage" alt="" class="w-8" />
        </button>

        <ul class="text-white w-full">
          <li v-for="link in links" :key="link.name">
            <div @mouseenter="itemSelected = link.name">
              <RouterLink
                :to="link.link"
                class="opacity-40 hover:opacity-100 transition-opacity duration-500"
                @click="closeSidebar"
              >
                {{ link.name }}
              </RouterLink>

              <button
                v-if="link.sublinks"
                type="button"
                class="ml-2"
                :aria-label="`Abrir submenu ${link.name}`"
                :aria-expanded="itemSelected === link.name"
                @click.stop="toggleDropdown(link.name)"
              >
                ▾
              </button>

              <transition name="dropdown">
                <ul
                  v-if="link.sublinks && itemSelected === link.name"
                  class="px-5"
                >
                  <li v-for="subl in link.sublinks" :key="subl.name">
                    <RouterLink
                      :to="subl.sublink"
                      class="opacity-40 hover:opacity-100 transition-opacity duration-500"
                      @click="closeSidebar"
                    >
                      {{ subl.name }}
                    </RouterLink>
                  </li>
                </ul>
              </transition>
            </div>
          </li>
        </ul>
      </div>
    </transition>
  </nav>
</template>

<style scoped>
.dropdown-enter-active,
.dropdown-leave-active {
  transition: opacity 0.2s ease, transform 0.2s ease;
}

.dropdown-enter-from,
.dropdown-leave-to {
  opacity: 0;
  transform: translateY(-4px);
}

.slide-enter-active,
.slide-leave-active {
  transition: transform 0.25s ease;
}

.slide-enter-from,
.slide-leave-to {
  transform: translateX(100%);
}
</style>
