<template>
    <nav class="absolute w-full flex flex-row justify-between py-5 px-10 bg-transparent">
        <a class="text-xl text-white font-bold" href="/"> GREATNESS. </a>

        <!-- Lista de items em telas grandes -->
        <ul id="navbar_right" class="hidden md:flex flex-row gap-10 text-white">
            <li v-for="link in links">
                <!-- Se link é o atual, deixa com opacidade normal -->
                <div v-if="link.link == active">

                    <!-- Link list -->
                    <a :href="link.link" @mouseenter="itemSelected = link.name"> {{ link.name }}</a>

                    <!-- Sublink list -->
                    <transition name="dropdown">
                        <ul v-show="link.sublinks && itemSelected == link.name" class="px-5">
                            <li v-for="subl in link.sublinks">
                                <a :href="subl.sublink"
                                    class="opacity-40 hover:opacity-100 transition-opacity duration-500">
                                    {{ subl.name }}</a>
                            </li>
                        </ul>
                    </transition>
                </div>
                <!-- Se não, deixa com opacidade reduzida e animção de hover -->
                <div v-else>
                    <!-- Link list -->
                    <a :href="link.link" class="opacity-50 hover:opacity-100 transition-opacity duration-500"
                        @mouseenter="itemSelected = link.name">
                        {{ link.name }}</a>

                    <!-- Sublink list -->
                    <transition name="dropdown">
                        <ul v-show="link.sublinks && itemSelected == link.name"
                            class="rounded-xl absolute top-12 py-2 px-5 bg-gray-200">
                            <li v-for="subl in link.sublinks" class="font-thin text-black">
                                <a :href="subl.sublink"
                                    class="opacity-40 hover:opacity-100 transition-opacity duration-500">
                                    {{ subl.name }}</a>
                            </li>
                        </ul>
                    </transition>
                </div>
            </li>
        </ul>

        <!-- Menu hamburguer em telas pequenas controlado por uma var reativa -->
        <div v-show="hamburguerState" id="ham_menu" class="block md:hidden hover:cursor-pointer" @click="showSidebar">
            <img src="/assets/hamburger.png" class="w-8">
        </div>

        <!-- Overlay da sidebar -->
        <div v-show="sidebarState" class="fixed inset-0 bg-black opacity-70 z-1" @click="showHamburguer">
        </div>

        <!-- Sidebar ao clicar no hamburguer guiada por uma var reativa -->
        <transition name="slide">
            <div v-if="sidebarState" id="sidebar"
                class="flex flex-col items-end px-8 py-5 bg-black fixed right-0 top-0 h-full w-60 z-1"
                @click="showHamburguer">

                <img src="/assets/sidebar-close.png" class="w-8 hover:cursor-pointer">

                <ul class="text-white w-full">
                    <li v-for="link in links">
                        <div @mouseenter="itemSelected = link.name">
                            <!-- Link list -->
                            <a :href="link.link" class="opacity-40 hover:opacity-100 transition-opacity duration-500">{{
                                link.name }}</a>

                            <!-- Sublink list -->
                            <transition name="dropdown">
                                <ul v-if="link.sublinks && itemSelected == link.name" class="px-5">
                                    <li v-for="subl in link.sublinks">
                                        <a :href="subl.sublink"
                                            class="opacity-40 hover:opacity-100 transition-opacity duration-500">
                                            {{ subl.name }}</a>
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

<script setup lang="ts">
import { ref } from 'vue';

const active = window.location.pathname;
const sidebarState = ref(false);
const hamburguerState = ref(true);
const itemSelected = ref("");

const links = [
    {
        name: "Home",
        link: "/"
    },
    {
        name: "About",
        link: "/about"
    },
    {
        name: "Services",
        link: "/services",
        sublinks: [
            {
                name: "Web Design",
                sublink: "/services/web-design"
            },
            {
                name: "eCommerce",
                sublink: "/services/ecommerce"
            },
            {
                name: "Branding",
                sublink: "/services/branding"
            },
            {
                name: "API",
                sublink: "/services/api"
            }
        ]
    },
    {
        name: "Dropdown",
        link: "/dropdown",
        sublinks: [
            {
                name: "HTML5",
                sublink: "/dropdown/html5"
            },
            {
                name: "CSS3",
                sublink: "/dropdown/css3"
            },
            {
                name: "SASS",
                sublink: "/dropdown/jquery"
            },
            {
                name: "jQuery",
                sublink: "/dropdown/jquery"
            }
        ]
    },
    {
        name: "Contact",
        link: "/contact"
    },
]

function showSidebar() {
    sidebarState.value = true;
    document.body.style.overflow = 'hidden';
}

function showHamburguer() {
    hamburguerState.value = true;
    sidebarState.value = false;
    document.body.style.overflow = '';
}
</script>

<style scoped>
/* Fade para o overlay */
.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}

/* Slide para a sidebar */
.slide-enter-active,
.slide-leave-active {
    transition: transform 0.3s ease;
}

.slide-enter-from,
.slide-leave-to {
    transform: translateX(100%);
}

.dropdown-enter-active,
.dropdown-leave-active {
    transition: max-height 0.3s ease, opacity 0.3s ease;
}

.dropdown-enter-from,
.dropdown-leave-to {
    max-height: 0;
    opacity: 0;
}

.dropdown-enter-to,
.dropdown-leave-from {
    max-height: 500px;
    /* valor alto suficiente para o conteúdo */
    opacity: 1;
}
</style>