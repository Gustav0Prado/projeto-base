<template>
  <div class="flex flex-col items-center justify-center">
    <!-- Logos para Documentação-->
    <div class="flex gap-8 mb-8">
      <a href="https://vite.dev" target="_blank">
        <img
          src="/favicon.svg"
          class="w-24 h-24 transition-all duration-300 hover:drop-shadow-[0_0_2em_#646cffaa]"
          alt="my-vue-app logo"
        />
      </a>
      <a href="https://vuejs.org/" target="_blank">
        <img
          src="./assets/vue.svg"
          class="w-24 h-24 transition-all duration-300 hover:drop-shadow-[0_0_2em_#42b883aa]"
          alt="Vue logo"
        />
      </a>
      <a href="https://tailwindcss.com/docs" target="_blank">
        <img
          src="https://tailwindcss.com/favicon.ico" 
          class="w-24 h-24 transition-all duration-300 hover:drop-shadow-[0_0_2em_#38bdf8]"
          alt="Tailwind CSS logo"
        />
      </a>
    </div>

    <!-- Navegação -->
    <nav class="mb-8">
      <router-link
        to="/"
        class="px-4 py-2 text-blue-600 hover:text-blue-800 transition-colors duration-300"
      >
        Home
      </router-link>
      <span class="mx-2 text-gray-400">|</span>
      <router-link
        to="/about"
        class="px-4 py-2 text-blue-600 hover:text-blue-800 transition-colors duration-300"
      >
        About
      </router-link>
    </nav>

    <!-- Router View -->
    <router-view class="w-full max-w-4xl px-4" />
    <!-- PWA Badge -->
    <PWABadge class="mt-8" />

  </div>
</template>

<script setup lang="ts">
import PWABadge from './components/PWABadge.vue';
</script>

<style>
@keyframes logo-float {
  0% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-10px);
  }
  100% {
    transform: translateY(0);
  }
}

.logo {
  animation: logo-float 3s ease-in-out infinite;
}
</style>