
<template>
  <div class="absolute w-full bg-transparent">
    <div class="max-w-7xl mx-auto px-4 sm:px-6">
      <div
        class="
          flex
          justify-between
          items-center
          py-6
          md:justify-start md:space-x-10
        "
      >
        <div class="flex justify-start lg:w-0 lg:flex-1">
          <a href="#">
            <span class="sr-only">Workflow</span>
            <!--
            <img class="h-8 w-auto sm:h-10" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="">
            -->
          </a>
        </div>
        <div class="-my-2 md:hidden">
          <button
            @click="openNavMobile = true"
            type="button"
            class="
              bg-white
              dark:bg-transparent
              border
              rounded-md
              p-1
              inline-flex
              items-center
              justify-center
              text-gray-400
              dark:text-gray-100
              hover:text-gray-500 hover:bg-gray-100
              focus:outline-none
              focus:ring-2
              focus:ring-inset
              focus:ring-indigo-500
            "
            aria-expanded="false"
          >
            <span class="sr-only">Open menu</span>
            <!-- Heroicon name: outline/menu -->
            <svg
              class="h-6 w-6"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              aria-hidden="true"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M4 6h16M4 12h16M4 18h16"
              />
            </svg>
          </button>
        </div>
        <!-- Menu on descktop -->
        <nav class="hidden md:flex space-x-10">
          <a
            :href="item.link"
            v-for="item in nav"
            :key="item.title"
            class="
              text-base
              font-medium
              hover:text-gray-500
              dark:text-gray-300 dark:hover:text-white
            "
            >{{ item.title }}</a
          >
        </nav>

        <div class="hidden md:flex items-center justify-end md:flex-1 lg:w-0">
          <ModeIcon />
        </div>
      </div>
    </div>
    <!-- mobile menu open -->
    <div
      class="
        absolute
        top-0
        inset-x-0
        p-2
        transition
        transform
        origin-top-right
        md:hidden
        z-50
      "
      v-bind:class="{ hidden: !openNavMobile }"
    >
      <div
        class="
          rounded-lg
          shadow-lg
          ring-1 ring-black ring-opacity-5
          bg-white
          dark:bg-gray-800
          divide-y-2 divide-gray-50
          dark:divide-gray-700
        "
      >
        <div class="pt-5 pb-6 px-5">
          <div class="flex items-center justify-between">
            <div>
              <!--
              <img class="h-8 w-auto" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="Workflow">
              -->
            </div>
            <div class="-mr-2">
              <button
                @click="openNavMobile = false"
                type="button"
                class="
                  ease-out 
                  duration-300
                  bg-white
                  dark:bg-gray-800
                  border
                  dark:border-gray-300
                  rounded-md
                  p-1
                  inline-flex
                  items-center
                  justify-center
                  text-gray-400
                  dark:text-gray-300
                  hover:text-gray-500 hover:bg-gray-100
                  dark:hover:text-gray-100
                  focus:outline-none
                  focus:ring-2
                  focus:ring-inset
                  focus:ring-indigo-500
                "
              >
                <span class="sr-only">Close menu</span>
                <!-- Heroicon name: outline/x -->
                <svg
                  class="h-6 w-6"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  aria-hidden="true"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M6 18L18 6M6 6l12 12"
                  />
                </svg>
              </button>
            </div>
          </div>
          <div class="mt-6">
            <nav class="grid gap-y-8">
              <a
                :href="item.link"
                v-for="item in nav"
                :key="item.title"
                class="
                  -m-3
                  p-3
                  flex
                  items-center
                  text-base
                  rounded-md
                  hover:bg-gray-50
                  dark:hover:bg-gray-700
                  font-medium
                  hover:text-gray-500
                  dark:hover:text-white
                "
              >
                <!-- Heroicon name: outline/refresh -->
                <svg
                  class="flex-shrink-0 h-6 w-6 text-indigo-600"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  aria-hidden="true"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"
                  />
                </svg>
                <span
                  class="
                    ml-3
                    text-base
                    font-medium
                    text-gray-900
                    dark:text-white
                  "
                >
                  {{ item.title }}
                </span>
              </a>
            </nav>
          </div>
        </div>
        <div class="py-6 px-5 space-y-6">
          <div class="grid grid-cols-2 gap-y-4 gap-x-8">
            <a
              :href="item.link"
              target="_blanck"
              class="
                text-base
                font-medium
                text-gray-900
                hover:text-gray-700
                dark:text-white
              "
              v-for="item in socialNav"
              :key="item.text"
            >
              {{ item.text }}
            </a>
          </div>
        </div>
        <div class="py-6 px-5">
          <ModeIcon />
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import ModeIcon from "~/components/firstView/mode-icon.vue";
export default {
  components: {
    ModeIcon,
  },
  data() {
    return {
      nav: [
        { title: "About", icon: "", link:"#about" },
      
      ],
      socialNav: [
        {text:"E-mail", link:'mailto: laureanogramaglia@gmail.com' },
         {text:"Phone"},
         {text: "LinkedIn", link: 'https://www.linkedin.com/in/laureano-gramaglia-5648b31b2'},
         {text: "Whatsapp", link: 'https://api.whatsapp.com/send/?phone=5493518721405&text=Hi%2C+lets+do+a+project+together...&app_absent=0'}
         ],
      openNavMobile: false,
    };
  },
};
</script>
