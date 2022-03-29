<template>
  <div>
    <div ref="fullpage" class="full-page duration-700 ease-in-out">
      <slot />
    </div>
  </div>
</template>

<script>
export default {};
</script>
<style lang="scss">

.full-page{
  height: 100vh;
  scroll-snap-type: y mandatory;
  overflow-y: scroll;
  section.section{
    height: 100vh;
    scroll-snap-align: start;
  }
}
</style>