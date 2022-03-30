<template>
<div :class="dark ? 'dark' : 'light'">
 <FullScreen class="dark:bg-black overflow-hidden duration-700 ease-in-out"  :class="dark ? 'dark' : 'light'" >
    <section class="section" >
      <balls-background>
        <Header />
      <FirstView />
        </balls-background>
      
    </section>
    <section class="section">
      <SecondView />
    </section>
    <section class="section">
      <ThirdView class="relative"/>
    </section>
    <section class="section">
      <FourView />
    </section>
</FullScreen>
</div>
</template>

<script>
import FullScreen from "~/components/full-screen-scroll.vue";
import MainContainer from "~/components/main-container.vue";
import Header from "~/components/firstView/header.vue";
import BallsBackground from "~/components/firstView/balls-background.vue";

 import { mapGetters } from 'vuex';

export default {
  
  components: {
    FullScreen,
    MainContainer,
    Header,
    BallsBackground
  },
  computed: {
      ...mapGetters(['dark']),
    },
 methods:{
   callbackGo(){
     this.goTo1 = !this.goTo1
   }
 }

}
</script>

<style lang="scss">
*{
  box-sizing: border-box;
}

</style>
