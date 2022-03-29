<template>
 <div>
    <button class="p-1 hidden md:inline" @click="toggleDarkMode">
    <svg
      v-if="dark"
      xmlns="http://www.w3.org/2000/svg"
      class="h-6 w-6 text-gray-200"
      fill="none"
      viewBox="0 0 24 24"
      stroke="currentColor"
      stroke-width="2"
    >
      <path
        stroke-linecap="round"
        stroke-linejoin="round"
        d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z"
      />
    </svg>
    <svg
      v-else
      xmlns="http://www.w3.org/2000/svg"
      class="h-6 w-6"
      fill="none"
      viewBox="0 0 24 24"
      stroke="currentColor"
      stroke-width="2"
    >
      <path
        stroke-linecap="round"
        stroke-linejoin="round"
        d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364 6.364l-.707-.707M6.343 6.343l-.707-.707m12.728 0l-.707.707M6.343 17.657l-.707.707M16 12a4 4 0 11-8 0 4 4 0 018 0z"
      />
    </svg>
  </button>
  <div class="p-1 md:hidden grid grid-cols-2 justify-items-stretch gap-2">
    <button @click="toLight" class="text-gray-400 dark:text-white dark:bg-indigo-600 border rounded-md dark:border-indigo-500">Day</button>
    <button @click="toDark" class="bg-blue-900 text-gray-200 dark:text-blue-800 dark:bg-gray-900 border rounded-md dark:border-gray-900">Night</button>
  </div>
 </div>
</template>

<script>
import { mapGetters, mapMutations } from "vuex";

export default {
  computed: {
    ...mapGetters(["dark"]),
  },

  mounted() {
    if (localStorage.theme === undefined) {
      if (
        window.matchMedia &&
        window.matchMedia("(prefers-color-scheme: dark)").matches
      ) {
        localStorage.theme = "dark";
        this.SET_DARK(true);
      } else {
        localStorage.theme = "light";
      }
    } else {
      this.SET_DARK(localStorage.theme === "dark");
    }
  },

  methods: {
    ...mapMutations(["SET_DARK"]),

    toggleDarkMode() {
      this.SET_DARK(!this.dark);
      localStorage.theme = this.dark ? "dark" : "light";
    },
    toDark(){
      this.SET_DARK(true);
       localStorage.theme = this.dark ? "dark" : "light";
    },
    toLight(){
      this.SET_DARK(false);
      localStorage.theme = this.dark ? "dark" : "light";
    }
  },
};
</script>