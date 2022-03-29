<template>
  <div class="justify-self-center md:justify-self-end  md:w-48 lg:w-72">
    <kinesis-container>
      <kinesis-element type="depth" :strength="10">
        <img class="rounded-2xl w-40  md:w-48 lg:w-96" src="~/assets/img/lau-photo.JPG" alt="" />
      </kinesis-element>
      <kinesis-element class="hidden md:inline" type="depth" :strength="10">
      <div class=" md:absolute md:-left-100px md:-bottom-70px md:w-auto md:max-w-xs">
        <h4 class="dark:text-white text-xl md:text-3xl">{{quote}}</h4>
      </div>
      </kinesis-element>
    </kinesis-container>
    
  
  </div>
</template>
<script>
export default {
  data(){
    return{
      quote: '"If there is no solution, then is not a problem"'
    }
  }
};
</script>
<style lang="scss">

</style>