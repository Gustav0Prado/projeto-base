<template>
    <div class="flex flex-col bg-gray-200 items-center py-20">
        <div class="flex flex-col text-wrap m-5 gap-4 max-w-2xl text-center">
            <span class=" font-bold text-4xl"> Watch our videos </span>
            <span class="text-gray-500 font-thin text-xl"> Dignissimos asperiores vitae velit veniam totam fuga
                molestias accusamus alias
                autem provident. Odit ab
                aliquam dolor eius.
            </span>
        </div>
        <div class="flex flex-row flex-wrap justify-center gap-40 py-10">
            <div v-for="img in images" class="relative inline-block video-bg-image">
                <img :src="img.src" class="images rounded-2xl transition duration-300">

                <a href="https://youtube.com" target="_blank" class="absolute inset-0 flex items-center justify-center">
                    <img src="/src/assets/video-icon.png" alt="Video Icon" width="64" height="64">
                </a>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
const images = [
    {
        src: "/src/assets/image1.jpg",
        alt: "Primeira imagem"
    },
    {
        src: "/src/assets/image2.jpg",
        alt: "Segunda imagem"
    },
    {
        src: "/src/assets/image3.jpg",
        alt: "Terceira imagem"
    }
]
</script>

<style scoped>
/* Efeito de brilho no hover do container */
.video-bg-image:hover {
    filter: brightness(70%);
}

.video-bg-image a {
    transition: transform 0.3s ease;
}

.video-bg-image a:hover {
    transform: scale(1.2);
}

.images {
    width: 250px;
    height: 200px;
}
</style>