<template>
    <div class="banner flex flex-col items-center py-70 gap-5 h-200 w-full">
        <div class="text-white text-5xl md:text-7xl font-thin text-center wrap-anywhere"> GREATNESS TEMPLATE </div>
        <div class="text-white text-2xl font-thin"> MADE BY gstv0 </div>
        <div class="flex flex-row gap-10">
            <button class="bg-green-600 hover:cursor-pointer rounded-md p-5 text-white hover:brightness-125"> Get
                Started </button>
            <button
                class="text-white rounded-md border-1 border-white p-5 hover:cursor-pointer hover:bg-white hover:text-black transition-colors duration-300 ">
                Download </button>
        </div>
    </div>
</template>

<script setup lang="ts"></script>

<style scoped>
.banner {
    background-image: url('/src/assets/banner.png');
    background-size: cover;
}
</style>