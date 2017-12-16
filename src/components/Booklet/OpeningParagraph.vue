<template>
  <p>
    This is my very important paragraph.
    I am a distinguished gentleman of such renown that my paragraph
    needs to be styled in a manner befitting my majesty. Bow before
    my splendour, dear students, and go forth and learn CSS!
  </p>
</template>

<style scoped>
  p {
    color: black;
    width: 400px;
    margin: 0 auto;
  }

  p::first-line {
    text-transform: uppercase;
  }

  p::first-letter {
    font-size: 3em;
    border: 1px solid black;
    background: #ffffff;
    float: left;
    padding: 2px;
    margin-right: 4px;
  }
</style>
