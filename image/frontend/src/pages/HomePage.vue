<template>
  <div>
    <PostList>
      <PostItem v-for="n in 5" :key="n" />
    </PostList>
    <!-- <PostDetails /> -->
    <!-- <PostUpload /> -->
    <!-- <HelloTeleport /> -->
  </div>
</template>

<script setup>
  // import PostUpload from '../components/PostUpload.vue';
  import PostList from '../components/PostList.vue';
  import PostItem from '../components/PostItem.vue';
  // import HelloTeleport from '../components/HelloTeleport.vue';
  import PostUpload from '../components/PostUpload.vue';

</script>

<style scoped></style>