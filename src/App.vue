<template>
  <Navbar />

  <main>
    <!-- Router View -->
    <router-view class="w-full" />
  </main>

  <BackToTopBtn />
  <Footer />
</template>

<script setup lang="ts">
import BackToTopBtn from './components/sections/layout/BackToTopBtn.vue';
import Footer from './components/sections/layout/Footer.vue';
import Navbar from './components/sections/layout/Navbar.vue';
</script>

<style></style>