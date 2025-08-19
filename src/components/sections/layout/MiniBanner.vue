<template>
    <div class="banner flex flex-col items-center py-70 gap-5 h-100 w-full">
        <div class="text-white text-5xl md:text-7xl font-thin text-center"> {{ props.title }} </div>
    </div>
</template>

<script setup lang="ts">
const props = defineProps(['title'])
</script>

<style scoped>
.banner {
    background-image: url('/src/assets/banner.png');
    background-size: cover;
}
</style>