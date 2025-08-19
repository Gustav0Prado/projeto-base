<template>
    <div class="bg-gray-200 items-center py-10">
        <div class="font-bold text-3xl text-center py-5"> Testimonial </div>
        <v-carousel :show-arrows="false" class="testimony-carousel">
            <v-carousel-item v-for="(testimonial, i) in testimonials" :key="i">
                <div class="flex flex-col items-center">
                    <div class="py-10"></div>
                    <img :src="testimonial.icon" class="rounded-full" width="80"></img>
                    <div class="font-bold text-gray-700 text-center">
                        {{ testimonial.source }}
                        <a :href="testimonial.sourceLink" class="text-green-700 hover:underline text-center">
                            {{ testimonial.sourceName }} </a>
                    </div>
                    <div class="text-center max-w-sm font-thin py-10"> "{{ testimonial.text }}" </div>
                </div>
            </v-carousel-item>
        </v-carousel>
    </div>
</template>

<script setup lang="ts">
const testimonials = [
    {
        icon: "assets/person_1.jpg",
        source: "JEAN DOE, VIA",
        sourceName: "TWITTER",
        sourceLink: "http://x.com",
        text: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean."
    },
    {
        icon: "assets/person_2.jpg",
        source: "JOHN DOE, VIA",
        sourceName: "TWITTER",
        sourceLink: "http://x.com",
        text: "Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean."
    },
    {
        icon: "assets/person_3.jpg",
        source: "JOHN DOE, VIA",
        sourceName: "TWITTER",
        sourceLink: "http://x.com",
        text: "Far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean."
    }
]
</script>

<style scoped>
.testimony-carousel :deep(.v-btn--variant-text .v-btn__overlay) {
    background: transparent;
}

.testimony-carousel :deep(.v-btn--active) {
    color: #097749 !important;
}

.testimony-carousel :deep(.v-carousel__controls) {
    background: transparent;
}

.testimony-carousel :deep(.v-carousel__controls__item .v-icon) {
    opacity: 1;
}

.testimony-carousel :deep(.v-btn--icon) {
    color: rgb(95, 95, 95);
}
</style>