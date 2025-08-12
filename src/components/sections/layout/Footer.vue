<template>
    <footer class="flex flex-col flex-wrap gap-20 py-40 items-left">
        <div class="flex flex-row flex-wrap gap-35">
            <div v-for="(column, index) in links" :key="index" class="flex flex-col gap-2 items-start">
                <a v-for="(link, subindex) in column" :key="subindex" :href="link.link" class="hover:underline">
                    {{ link.name }} </a>
            </div>
        </div>
        <div class="flex flex-row relative">
            <small class="font-thin text-gray-600">
                © 2016 Free HTML5. All Rights Reserved. <br>
                Designed by
                <a href="FreeHTML5.co" class="text-orange-600"> FreeHTML5.co </a>
                Demo Images:
                <a href="Unsplash.com" class="text-orange-600"> Unsplash </a>
            </small>
            <div class="flex flex-row gap-4 absolute right-0 inset-y-0">
                <a href="https://twitter.com" target="_blank">
                    <img src="../../../assets/twitter.png" alt="Twitter" width="24" height="24">
                </a>
                <a href="https://facebook.com" target="_blank">
                    <img src="../../../assets/facebook.png" alt="facebook" width="24" height="24">
                </a>
                <a href="https://linkedin.com" target="_blank">
                    <img src="../../../assets/linkedin.png" alt="linkedin" width="24" height="24">
                </a>
                <a href="https://twitter.com" target="_blank">
                    <img src="../../../assets/twitter.png" alt="Twitter" width="24" height="24">
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