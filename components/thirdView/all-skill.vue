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
          { text: 'Scss', img: 'tecnologies/scss.png'},
          { text: 'NodeJs', img: 'tecnologies/nodejs.png'},
          { text: 'Vue.js', img: 'tecnologies/vuejs.png'},
          { text: 'Nuxt.js', img: 'tecnologies/nuxt.png'},
          { text: 'Nest', img: 'tecnologies/nestjs.png'},
          { text: 'Tailwind', img: 'tecnologies/tailwind.png'},
          { text: 'Flutter', img: 'tecnologies/flutter.png'},
          { text: 'Wordpress', img: 'tecnologies/wordpress.png'},
          { text: 'MySql', img: 'tecnologies/mysql.png'},
          { text: 'Mongodb', img: 'tecnologies/mongodb.png'},
          { text: 'Git', img: 'tecnologies/git.png'},
          { text: 'Github', img: 'tecnologies/github.png'},
          { text: 'Docker', img: 'tecnologies/docker.png'},
          { text: 'Heroku', img: 'tecnologies/heroku.png'}
          ],
    };
  },
};
</script>
<style scoped>
</style>