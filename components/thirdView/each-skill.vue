<template>
  <div class="grid grid-cols-2 items-center">
    <div class="box-text-skills justify-self-start pl-2 md:pl-6">
      <p class="font-bold text-xl md:text-3xl py-1 dark:text-white">
        {{ skillName }}
      </p>
    </div>
    <div>
      <div v-for="(item, index) in lvl" :key="item">
        <div
          :id="item"
          class="
            float-left
            h-2
            w-4
            mx-1
            md:skill-lvl
            border border-black
            dark:border-white
            md:h-4
            md:w-16
          "
          v-bind:class="{ 'bg-black dark:bg-white': activeSkill > index }"
        ></div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  props: ["skillName", "activeSkill"],
  data() {
    return {
      lvl: ["lvl-1", "lvl-2", "lvl-3", "lvl-4", "lvl-5"],
    };
  },
};
</script>
<style lang="scss">
.skill-lvl {
  margin-right: 12px;
  height: 13px;
  width: 60px;
}
</style>