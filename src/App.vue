<template>
  <Navbar />

  <main>
    <!-- Router View -->
    <router-view class="w-full" />

    <!-- PWA Badge -->
    <PWABadge class="mt-8" />
  </main>

  <BackToTopBtn />
  <Footer />
</template>

<script setup lang="ts">
import PWABadge from './components/PWABadge.vue';
import BackToTopBtn from './components/sections/layout/BackToTopBtn.vue';
import Footer from './components/sections/layout/Footer.vue';
import Navbar from './components/sections/layout/Navbar.vue';
</script>

<style></style>