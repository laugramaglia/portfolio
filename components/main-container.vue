<template>
  <div class="h-screen flex items-center justify-center">
    <div
      class="
        grid
        items-center
        grid-cols-1
        container-style
        px-6
        py-6
        md:py-10 
        md:px-10
        lg:px-20
      "
      v-bind:class="{'rounded-3xl border border-gray-600 blur delay-400 duration-300 ease-in-out': borderActive, 'md:grid-cols-2': !noColumns}"
    >
      <slot />
    </div>
  </div>
</template>

<script>
export default {
  props: {
    borderActive: Boolean,
    noColumns: {
      type: Boolean,
      default: false
    }
  }
};
</script>

<style lang="scss">
$box-height: auto;
$box-width: $page-width;

.container-style {
  height: $box-height;
  width: $box-width;
  &.blur {
    backdrop-filter: blur(2px);
  }
}
</style>
