<template>
  <!-- <div class="text-center">
    <h1 class="text-4xl font-bold text-gray-800 mb-4">
      Seja bem-vindo(a), <span class="text-green-600">c3sler</span>!
    </h1>
    <p class="text-lg text-gray-600">
      Este é o projeto base em que será desenvolvido o souUFPR :)
    </p>
    <p class="text-lg text-gray-600">
      Fique a vontade para alterar App.vue e remover os arquivos src/componentes/Home.vue e src/componentes/About.vue,
      eles foram criados para disponibilizar os links para as documentações e demonstrar como funciona o
      redirecionamento de telas dentro do Vuejs
    </p>
  </div> -->
  <Gallery />
</template>

<script setup lang="ts">
import Gallery from '../components/sections/home/Gallery.vue';

</script>
