<template>
  <div class="circle-container overflow-hidden">
    <div v-if="dark" id="stars"></div>
    <div v-if="dark" id="stars2"></div>
    <div v-if="dark" id="stars3"></div>

    <div class="circle-box vh-descktop" :class="{ 'z-in': !dark }">
      <div
        class="circle "
        :class="dark ? 'moon' : 'sun'"
      ></div>
    </div>
    <slot></slot>
  </div>
</template>
<script>
import { mapGetters } from "vuex";

export default {
  computed: {
    ...mapGetters(["dark"]),
  },
};
</script>


<style lang="scss">
@function multiple-box-shadow($n) {
  $value: "#{random(2000)}px #{random(20000)}px #FFF";
  @for $i from 2 through $n {
    $value: "#{$value} , #{random(2000)}px #{random(2000)}px #FFF";
  }
  @return unquote($value);
}

$shadows-small: multiple-box-shadow(700);
$shadows-medium: multiple-box-shadow(200);
$shadows-big: multiple-box-shadow(100);

#stars {
  width: 1px;
  height: 1px;
  background: transparent;
  box-shadow: $shadows-small;
  animation: animStar 50s linear infinite;

  &:after {
    content: " ";
    position: absolute;
    top: 2000px;
    width: 1px;
    height: 1px;
    background: transparent;
    box-shadow: $shadows-small;
  }
}

#stars2 {
  width: 2px;
  height: 2px;
  background: transparent;
  box-shadow: $shadows-medium;
  animation: animStar 100s linear infinite;

  &:after {
    content: " ";
    position: absolute;
    top: 2000px;
    width: 2px;
    height: 2px;
    background: transparent;
    box-shadow: $shadows-medium;
  }
}

#stars3 {
  width: 3px;
  height: 3px;
  background: transparent;
  box-shadow: $shadows-big;
  animation: animStar 150s linear infinite;

  &:after {
    content: " ";
    position: absolute;
    top: 2000px;
    width: 3px;
    height: 3px;
    background: transparent;
    box-shadow: $shadows-big;
  }
}

@keyframes animStar {
  from {
    transform: translateY(0px);
  }
  to {
    transform: translateY(-2000px);
  }
}

$ball-size: 180px;
.circle-container {
  height: 100vh;
  width: 100%;
  position: relative;

  .circle-box {
    position: absolute;
    width: 100%;

    &.z-in {
      z-index: -1;
    }
     &.vh-descktop {
       @media screen and(max-width: 767px){
        top: 2vh;
       }
        top: 8vh;
      }

    .circle {
      @media screen and(max-width: 767px){
        height: $ball-size * .7;
        width: $ball-size * .7;
       }
      height: $ball-size;
      width: $ball-size;
      border-radius: 100%;
      transition: 0.7s ease-in-out;
      margin: 20px;
      &.orange-circle {
        bottom: $ball-size - $ball-size * 1.2;
        right: $ball-size - $ball-size * 1.2;
        background: linear-gradient(180deg, #f69f0c 0%, #ef4444 100%);
      }
     
      &.sun {
        margin-left: calc(95% - 180px);
        //background: linear-gradient(125.86deg, #8b5cf6 14.53%, #ec4899 95.76%);
        background: orange;
        box-shadow: 0 0 10px orange, 0 0 60px orange, 0 0 200px yellow,
          inset 0 0 80px yellow;
        z-index: -1;
      }
      &.moon {
        margin-left: 5%;
        //background: linear-gradient(125.86deg, #8b5cf6 14.53%, #ec4899 95.76%);
        background: rgba(255, 255, 255, 0.9);
        box-shadow: 0 0 10px white, 0 0 60px white, 0 0 200px lightgray,
          inset 0 0 80px lightgray;
      }
    }
  }
}
</style>