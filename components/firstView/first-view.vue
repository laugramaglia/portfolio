<template>
<main-container  :border-active="dark">
    <IntroductionText />
    <Introduction-img  />    
</main-container>
</template>
<script>
import { mapGetters } from 'vuex';
import MainContainer from "~/components/main-container.vue";
import IntroductionText from "~/components/firstView/introduction-text.vue";
import IntroductionImg from "~/components/firstView/introduction-img.vue";

export default {
  components: {
    MainContainer,
    IntroductionText,
    IntroductionImg,
  },
   computed: {
      ...mapGetters(['dark']),
    },
}
</script>