<template>
  <MainContainer :border-active="true" :noColumns="true">
        <div class="w-full pb-4 text-right">
          <h3 class="font-bold text-4xl md:text-6xl dark:text-white">My Skills</h3>
        </div>
  
      <h4 class="sub-title first font-bold text-3xl md:text-4xl pb-2 max-w-min dark:text-white">Ux</h4>
      <EachSkill skillName="Figma" :activeSkill="3" />
      <EachSkill skillName="Ux Research" :activeSkill="3" />
      <h4 class="sub-title last font-bold text-3xl md:text-4xl pb-2 max-w-min dark:text-white">Fullstack</h4>
      <EachSkill skillName="Wordpress" :activeSkill="4" />
      <EachSkill skillName="Vue - NuxtJs" :activeSkill="3" />
      <EachSkill skillName="NodeJs" :activeSkill="4" />
      <EachSkill skillName="ThreeJs" :activeSkill="3" />

      <!--
        <a href="#" class="mt-3 text-gray-300 underline">All skills..</a>
        -->
  </MainContainer>
</template>
<script>
import EachSkill from "./each-skill.vue";
export default {
  components: { EachSkill },
};
</script>
<style lang="scss">

.sub-title {
  &.first {
    background: linear-gradient(90deg, #f59e0b 39.95%, #ef4444 77.15%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }
  &.last {
    background: linear-gradient(90deg, #8b5cf6 0%, #ec4899 43.9%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    margin-top: 24px;
  }
}
</style>