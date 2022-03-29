<template>
  <MainContainer>
    <div class="md:max-w-sm -mt-8 mb-6 md:m-0">
      <h3 class="font-bold text-4xl dark:text-white">ABOUT</h3>
      <p class="dark:text-white py-3 text-lg">
       I love to challenge my self and solving problems, besides working i also like to travel and get inspired by different cultures and places. I start bulding this website when i was back from the mountains, as you can see i couldn't forget the stars.
      </p>
    </div>
    <RightColumn />
  </MainContainer>
</template>
<script>
import MainContainer from "../main-container.vue";
import RightColumn from "../secondView/right-column.vue"
export default {
  components: { MainContainer, RightColumn },
};
</script>


