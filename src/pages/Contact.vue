<template>
    <MiniBanner title="GET IN CONTACT" />
    <div class="flex flex-row flex-wrap py-20 justify-left sm:justify-center gap-10">
        <div class="flex flex-col">
            <h2 class="font-semibold text-2xl px-2">Get In Touch</h2>
            <form class="flex flex-col flex-wrap gap-5 px-2">
                <div class="flex flex-row flex-wrap sm:gap-10">
                    <div class="flex flex-col grow">
                        <label class="font-thin py-3">First name</label>
                        <input type="text" placeholder="Your first name"
                            class="border-2 border-green-700 rounded-md p-4"></input>
                    </div>
                    <div class="flex flex-col grow">
                        <label class="font-thin py-3">Last name</label>
                        <input type="text" placeholder="Your last name"
                            class="border-2 border-green-700 rounded-md p-4"></input>
                    </div>
                </div>
                <div class="flex flex-col flex-wrap">
                    <label class="font-thin py-3">Email</label>
                    <input type="email" placeholder="Your email address"
                        class="border-2 border-green-700 rounded-md p-4"></input>
                </div>
                <div class="flex flex-col flex-wrap">
                    <label class="font-thin py-3">Subject</label>
                    <input type="text" placeholder="Your subject of this message"
                        class="border-2 border-green-700 rounded-md p-4"></input>
                </div>
                <div class="flex flex-col flex-wrap">
                    <label class="font-thin py-3">Message</label>
                    <textarea type="text" placeholder="Write us something"
                        class="border-2 border-green-700 rounded-md p-4" cols="30" rows="10"></textarea>
                </div>
                <button type="submit" class=" bg-green-600 text-white rounded-md p-3 cursor-pointer w-40">
                    Send Message
                </button>
            </form>
        </div>
        <div class="flex flex-col gap-20 px-2">
            <div class="flex flex-col">
                <h3 class="font-semibold text-2xl"> USA Office </h3>
                <ul>
                    <li class="my-7 flex flex-row gap-4 items-center">
                        <img src="/assets/pin-point.png" width="40">
                        <p class="font-thin"> 198 West 21th Street, <br></br> Suite 721 New York NY 10016 </p>
                    </li>
                    <li class="my-7 flex flex-row gap-4 items-center">
                        <img src="/assets/phone.png" width="40">
                        <a href="tel://+12345678920" class="text-green-700">+ 12345 678920</a>
                    </li>
                    <li class="my-7 flex flex-row gap-4 items-center">
                        <img src="/assets/mail.png" width="40">
                        <a href="mailto:info@yoursite.com" class="text-green-700">info@yoursite.com</a>
                    </li>
                    <li class="my-7 flex flex-row gap-4 items-center">
                        <img src="/assets/web.png" width="40">
                        <a href="http://FreeHTML5.co" class="text-green-700">FreeHTML5.co</a>
                    </li>
                </ul>
            </div>
            <div class="flex flex-col">
                <h3 class="font-semibold text-2xl"> Australia Office </h3>
                <ul>
                    <li class="my-7 flex flex-row gap-4 items-center">
                        <img :src="'/assets/pin-point.png'" width="40">
                        <p class="font-thin"> 198 West 21th Street, <br></br> Suite 721 New York NY 10016 </p>
                    </li>
                    <li class="my-7 flex flex-row gap-4 items-center">
                        <img :src="'/assets/phone.png'" width="40">
                        <a href="tel://+12345678920" class="text-green-700">+ 12345 678920</a>
                    </li>
                    <li class="my-7 flex flex-row gap-4 items-center">
                        <img :src="'/assets/mail.png'" width="40">
                        <a href="mailto:info@yoursite.com" class="text-green-700">info@yoursite.com</a>
                    </li>
                    <li class="my-7 flex flex-row gap-4 items-center">
                        <img :src="'/assets/web.png'" width="40">
                        <a href="http://FreeHTML5.co" class="text-green-700">FreeHTML5.co</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
import MiniBanner from '../components/sections/layout/MiniBanner.vue';
</script>

<style scoped></style>