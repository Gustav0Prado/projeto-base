<template>
    <div>
        <img src="/src/assets/up-arrow-button.png" class="w-15 fixed cursor-pointer right-10 bottom-10" @click="goToTop"
            v-show="showButton">
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue';

let showButton = ref(false);

const goToTop = () => {
    window.scrollTo({ top: 0, behavior: 'smooth' })
}

const checkIfNearBottom = () => {
    const scrollPos = window.scrollY + window.innerHeight
    const halfPage = document.documentElement.scrollHeight / 2
    showButton.value = (scrollPos > halfPage)
}

onMounted(() => {
    window.addEventListener('scroll', checkIfNearBottom)
})

onUnmounted(() => {
    window.removeEventListener('scroll', checkIfNearBottom)
})

</script>