<template>
  <div>
    <div class="text-small md:text-4xl font-bold">
      <h2 class="text-gray-800 dark:text-white">Hi, i'm a</h2>
      <h2 class="text-gray-800 dark:text-white">
        <span class="word-ux">Ux</span> Designer and
      </h2>
      <h2 class="text-gray-800 dark:text-white">
        <span class="word-fullstack">Fullstack</span> Developer
      </h2>
    </div>
    <div class="paragraph-box">
      <p class="text-gray-800 dark:text-white text-lg">
        i'm an enthusiast, learning and developing complement each other and I
        like both. i've been working on web development for more than 3 years as
        a freelance.
      </p>
    </div>
  </div>
</template>
<script>
export default {};
</script>
<style lang="scss">
div {
  h2 {
    .word-ux {
      background: linear-gradient(90deg, #f59e0b 39.95%, #ef4444 77.15%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }
    .word-fullstack {
      background: linear-gradient(90deg, #8b5cf6 0%, #ec4899 43.9%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }
  }
  .paragraph-box {
    padding: 8px 0;
    max-width: 400px;
    p {
      line-height: 25px;
    }
  }
}
</style>
