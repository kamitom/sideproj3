<template>
  <div>
    <h2 class="title">編輯個人資料</h2>
    <div class="changeAvatar">
      <TheAvatar :width="48" :height="48" />
      <TheButton>修改Avatar</TheButton>
      <input type="file" class="inputFile">
    </div>
  </div>
</template>

<script setup>
  import TheAvatar from '../components/TheAvatar.vue';
  import TheButton from '../components/TheButton.vue';
</script>


<style scoped>
  .title {
    margin-bottom: 42px;
    font-size: 24px;
    font-weight: 600;
  }

  .changeAvatar {
    display: flex;
    align-items: center;
    position: relative;
  }

  .changeAvatar .button {
    margin-left: 26px;
  }

  .inputFile {
    opacity: 0;
    position: absolute;
    cursor: pointer;
    top: 0;
    bottom: 0;
  }

  .profileForm {
    display: grid;
    grid-template-columns: max-content 1fr;
    row-gap: 32px;
    column-gap: 10px;
    margin-top: 38px;
  }

  .profileForm>label {
    grid-column: 1 / 2;
    justify-self: end;
    position: relative;
    top: 6px;
  }

  .profileForm .actions {
    grid-column: 1 / 3;
    justify-self: end;
    display: flex;
    gap: 16px;
  }
</style>