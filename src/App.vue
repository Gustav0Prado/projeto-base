<template>
  <div class="flex flex-col min-h-screen items-center">
    <main class="flex-grow">
      <!-- Router View -->
      <!-- <router-view class="w-full max-w-4xl px-4" /> -->
      <!-- PWA Badge -->
      <PWABadge class="mt-8" />
    </main>
    <Footer />
  </div>
</template>

<script setup lang="ts">
import PWABadge from './components/PWABadge.vue';
import Footer from './components/sections/layout/Footer.vue';
</script>

<style></style>