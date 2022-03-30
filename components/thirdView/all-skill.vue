<template>
  <div class="flex flex-wrap justify-center">
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
      listTecnologies: [
          { text: "Html5", img: "tecnologies/html5.png" }, 
          { text: 'Css3', img: 'tecnologies/css3.png'},
          { text: 'Scss', img: 'tecnologies/css3.png'},
          { text: 'NodeJs', img: 'tecnologies/css3.png'},
          { text: 'Vue.js', img: 'tecnologies/css3.png'},
          { text: 'Nuxt.js', img: 'tecnologies/css3.png'},
          { text: 'Nest', img: 'tecnologies/css3.png'},
          { text: 'Tailwind', img: 'tecnologies/css3.png'},
          { text: 'Flutter', img: 'tecnologies/css3.png'},
          { text: 'Wordpress', img: 'tecnologies/css3.png'},
          { text: 'MySql', img: 'tecnologies/css3.png'},
          { text: 'Mongodb', img: 'tecnologies/css3.png'},
          { text: 'Git', img: 'tecnologies/css3.png'},
          { text: 'Github', img: 'tecnologies/css3.png'},
          { text: 'Docker', img: 'tecnologies/css3.png'},
          { text: 'Heroku', img: 'tecnologies/css3.png'}
          ],
    };
  },
};
</script>
<style scoped>
</style>