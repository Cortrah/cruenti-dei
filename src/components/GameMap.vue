<template>
  <div class="pane">
    <div class="toolbar">
      <input type="range" min="0" max="5" value="3" id="fader">
    </div>
    <img src="./sahul.gif"></img>
  </div>
</template>

<style scoped>

  .toolbar {
    position: absolute;
    height:20px;
    width:140px;
    background-color: #336699;
    background-opacity: .4;
  }

  .pane {
    height:600px;
    width:800px;
    overflow: scroll;
  }

  img {
    height:1600px;
    width:2800px;
  }
</style>
