<template>
  <div>
    <h1>hello Porfile - 聯合利劍D</h1>
    <div>
      <!-- <img src="../assets/Israel.svg" alt="Israel Flag" class="scaled-img"> -->
      <TheAvatar src="src/assets/Israel-flag-boxed.png" width="200" height="200" />
    </div>
  </div>
</template>

<script setup>
  import TheAvatar from '../components/TheAvatar.vue';
</script>

<style scoped>

  .scaled-img {
    width: 60%;
  }
</style>