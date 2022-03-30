<template>
  <div>
    <MainContainer :border-active="true" :noColumns="true" class="cover" :class="popUpIsActive ? 'blur-in' : 'blur-out' ">
      <div class="w-full pb-4 text-right">
        <h3 class="font-bold text-4xl md:text-6xl dark:text-white">
          My Skills
        </h3>
      </div>

      <h4
        class="
          sub-title
          first
          font-bold
          text-3xl
          md:text-4xl
          pb-2
          max-w-min
          dark:text-white
        "
      >
        Ux
      </h4>
      <EachSkill skillName="Figma" :activeSkill="3" />
      <EachSkill skillName="Ux Research" :activeSkill="3" />
      <h4
        class="
          sub-title
          last
          font-bold
          text-3xl
          md:text-4xl
          pb-2
          max-w-min
          dark:text-white
        "
      >
        Fullstack
      </h4>
      <EachSkill skillName="Wordpress" :activeSkill="4" />
      <EachSkill skillName="Vue - NuxtJs" :activeSkill="3" />
      <EachSkill skillName="NodeJs" :activeSkill="4" />
      <EachSkill skillName="ThreeJs" :activeSkill="3" />

      <button
        @click="popUpIsActive = true"
        class="mt-3 dark:text-gray-300 underline"
      >
        All skills..
      </button>
    </MainContainer>
    <div class="h-screen w-full flex items-center justify-center">
      <div
      class="relative z-10 p-10 popup bg-white dark:bg-gray-900 border border-gray-400 dark:border-gray-900 rounded-3xl overflow-y-auto md:rounded-none lg:rounded-3xl"
      :class="{ 'active': popUpIsActive }"
    >
          <button class="absolute right-3 top-3 h-6 w-6 dark:text-white align-right" @click="popUpIsActive = false">
           <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
  <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
</svg>
          </button>
          <AllSkill />
    </div>
    </div>

  </div>
</template>
<script>
import EachSkill from "./each-skill.vue";
import AllSkill from "./all-skill.vue";
export default {
  components: { EachSkill, AllSkill },
  data() {
    return {
      popUpIsActive: false,
    };
  },
  methods: {
    toogleTo(value) {
      this.popUpIsActive = value;
      console.log(this.popUpIsActive);
    },
  },
};
</script>
<style lang="scss">
 h4{ 
   &.sub-title {
     &.first {
      background: linear-gradient(90deg, #f59e0b 39.95%, #ef4444 77.15%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }
    &.last {
      background: linear-gradient(90deg, #8b5cf6 0%, #ec4899 43.9%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }
   }
    }
.popup{
  max-width: 80%;
  max-height: 80%;
  visibility: hidden;
   scrollbar-width: thin;// auto | stable && both-edges?
  opacity: 0;
  transition: .3s ease-in;
  &.active{
    visibility: visible;
    opacity: 1;
  }
}

.cover {
    height: 100vh;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
}
.blur-in {
    animation: blur .4s forwards;
}

.blur-out {
    animation: blur-out .4s forwards;
}
@keyframes blur {
    0% {
        filter: blur(0px);
    }

    100% {
        filter: blur(3px);
    }
}
@keyframes blur-out {
    0% {
        filter: blur(3px);
    }

    100% {
        filter: blur(0px);
    }
}
</style>