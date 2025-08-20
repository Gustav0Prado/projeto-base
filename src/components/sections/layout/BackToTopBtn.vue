<template>
    <div>
        <transition name="fade">
            <img :src="'/assets/up-arrow-button.png'" class="w-12 fixed cursor-pointer right-5 bottom-5"
                @click="goToTop" v-show="showButton">
        </transition>
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue';

let showButton = ref(false);

const goToTop = () => {
    window.scrollTo({ top: 0, behavior: 'smooth' })
}

const checkIfNearBottom = () => {
    const scrollPos = window.scrollY
    const halfPage = document.documentElement.scrollHeight / 3
    showButton.value = (scrollPos > halfPage)
}

onMounted(() => {
    window.addEventListener('scroll', checkIfNearBottom)
})

onUnmounted(() => {
    window.removeEventListener('scroll', checkIfNearBottom)
})

</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.4s ease, transform 0.4s ease;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
    transform: translateY(20px);
}

.fade-enter-to,
.fade-leave-from {
    opacity: 1;
    transform: translateY(0);
}
</style>