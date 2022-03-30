<template>
  <div class="grid grid-cols-2">
    <div
      class="flex flex-col items-center justify-center m-3 w-24"
      v-for="item in listTecnologies"
      :key="item.text"
    >
      <img :src="item.img" />
      <h4 class="dark:text-white pt-2 text-xl font-medium">{{ item.text }}</h4>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      listTecnologies: [{ text: "Html5", img: "tecnologies/html5.png" }, { text: 'Css3', img: 'tecnologies/css3.png'}],
    };
  },
};
</script>
<style scoped>
</style>