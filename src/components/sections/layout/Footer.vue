<template>
    <footer class="flex flex-col flex-wrap gap-20 py-20 items-center ml-15 -mr-1.5">
        <div class="w-full max-w-6xl flex flex-row flex-wrap sm:gap-35 gap-x-35 gap-y-10">
            <div v-for="(column, index) in links" :key="index" class="flex flex-col gap-2 sm:w-auto sm:items-start">
                <a v-for="(link, subindex) in column" :key="subindex" :href="link.link" class="hover:underline">
                    {{ link.name }} </a>
            </div>
        </div>
        <div class=" w-full max-w-6xl grid grid-cols-1 sm:grid-cols-2 gap-4">
            <div class="font-thin text-gray-600 md:text-left text-center">
                © 2016 Free HTML5. All Rights Reserved. <br>
                Designed by
                <a href="FreeHTML5.co" class="text-green-800"> FreeHTML5.co </a>
                Demo Images:
                <a href="Unsplash.com" class="text-green-800"> Unsplash </a>
            </div>
            <div class="flex flex-row gap-4 md:justify-end justify-center">
                <a href="https://twitter.com" target="_blank">
                    <img src="/src/assets/twitter.png" alt="Twitter" width="24" height="24">
                </a>
                <a href="https://facebook.com" target="_blank">
                    <img src="/src/assets/facebook.png" alt="facebook" width="24" height="24">
                </a>
                <a href="https://linkedin.com" target="_blank">
                    <img src="/src/assets/linkedin.png" alt="linkedin" width="24" height="24">
                </a>
                <a href="https://twitter.com" target="_blank">
                    <img src="/src/assets/twitter.png" alt="Twitter" width="24" height="24">
                </a>
            </div>
        </div>
    </footer>
</template>

<script setup lang="ts">
const links = [
    [
        {
            name: "About",
            link: "/about"
        },
        {
            name: "Help",
            link: "/"
        },
        {
            name: "Contact",
            link: "/"
        },
        {
            name: "Terms",
            link: "/"
        },
        {
            name: "Meetups",
            link: "/"
        },
    ],
    [
        {
            name: "Creative Design",
            link: "/about"
        },
        {
            name: "Branding",
            link: "/"
        },
        {
            name: "Illustration",
            link: "/"
        },
        {
            name: "Subscribe",
            link: "/"
        },
        {
            name: "Monthly Event",
            link: "/"
        },
    ],
    [
        {
            name: "About",
            link: "/about"
        },
        {
            name: "Help",
            link: "/"
        },
        {
            name: "Contact",
            link: "/"
        },
        {
            name: "Terms",
            link: "/"
        },
        {
            name: "Meetups",
            link: "/"
        },
    ],
    [
        {
            name: "About",
            link: "/about"
        },
        {
            name: "Help",
            link: "/"
        },
        {
            name: "Contact",
            link: "/"
        },
        {
            name: "Terms",
            link: "/"
        },
        {
            name: "Meetups",
            link: "/"
        },
    ],
    [
        {
            name: "About",
            link: "/about"
        },
        {
            name: "Help",
            link: "/"
        },
        {
            name: "Contact",
            link: "/"
        },
        {
            name: "Terms",
            link: "/"
        },
        {
            name: "Meetups",
            link: "/"
        },
    ],
    [
        {
            name: "About",
            link: "/about"
        },
        {
            name: "Help",
            link: "/"
        },
        {
            name: "Contact",
            link: "/"
        },
        {
            name: "Terms",
            link: "/"
        },
        {
            name: "Meetups",
            link: "/"
        },
    ]
]
</script>

<style scoped></style>