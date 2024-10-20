<template>
  <teleport to="body">
    <div class="modal">
      <div class="backdrop"></div>
      <div class="modalContent">
        <button class="closeBtn">
          <TheIcon icon="close" />
        </button>
        <div class="postDetails">
          <img src="" alt="" class="postImage">
          <div class="postMeta">
            <div class="author">
              <TheAvatar />
              <span>陳詩偉</span>
            </div>
            <pre class="postDesc">
              這是我的照片,希望大家都喜歡😍
            </pre>
            <div class="comments">
              <div class="comment" v-for="n in 3" :key="n">
                <TheAvatar />
                <span class="user">李明</span>
                <span class="commentDate">1d</span>
                <p class="commentContent">
                  非常的好文!
                </p>
              </div>
            </div>
            <div class="actions">
              <div class="postActions">
                <TheIcon icon="like" />
                <span>1.9w</span>
                <TheIcon icon="comment" />
                <span>1.1w</span>
                <TheIcon icon="favorite" />
                <span>108w</span>
              </div>
              <span class="postPubDate">12h</span>
              <input type="text" class="commentInput" id="" name="comment" placeholder="隨便你寫評論吧!我都ok的.">
              <button class="commentPubBtn">發佈</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </teleport>

</template>

<script setup>
  import TheAvatar from './TheAvatar.vue';
  import TheIcon from './TheIcon.vue';
</script>

<style scoped>
  .modal {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background: white;
    padding: 1em;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: 60vw;
    height: 60vh;
  }

  .postDetails {
    display: grid;
    grid-template-columns: 1fr minmax(auto, 300px);
    grid-template-rows: minmax(0, 1fr);
    width: 80vw;
    height: 80vh;
  }

  .postImage {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  .postMeta {
    padding: 24px;
    padding-top: 36px;
    display: grid;
    align-items: start;
    grid-template-rows: max-content max-content 1fr max-content;
    max-height: 100%;
    height: 100%;
  }

  .author {
    display: flex;
    align-items: center;
    gap: 10px;
  }

  .postDesc {
    width: 100%;
    white-space: pre-wrap;
    margin-top: 24px;
  }

  .comments {
    display: grid;
    grid-template-columns: 1fr;
    grid-auto-rows: max-content;
    grid-gap: 28px;
    align-items: start;
    overflow-y: auto;
    height: 100%;
  }

  .comment {
    display: grid;
    grid-template-areas:
      "avatar name date"
      "comment comment comment";
    grid-template-columns: 34px 1fr 1fr;
    align-items: center;
    column-gap: 10px;
    row-gap: 14px;
  }

  .commentDate {
    grid-area: date;
    justify-self: end;
    color: #a7a7a7;
  }

  .commentContent {
    grid-area: comment;
  }

  .actions {
    border-top: 1px solid #eaeaea;
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    align-items: center;
    margin: 20px -24px 0px -24px;
    padding: 20px 24px 0 24px;
    row-gap: 16px;
  }

  .postActions> :deep(svg) {
    transform: scale(0.8125);
  }

  .postPubDate {
    color: #9f9f9f;
    grid-column: 2 / 6;
    justify-self: end;
    font-size: 14px;
  }

  .commentInput {
    background: #f7f7f7;
    border-radius: 16px;
    border: none;
    grid-column: 1 / 4;
  }

  .commentInput::placeholder {
    color: #b9b9b9;
    border: none;
  }

  .commentPubBtn {
    color: #1da0ff;
    border: none;
    background: none;
    font-size: 16px;
    margin-left: 20px;
    grid-column: 4 / 6;
  }
</style>