<template>
  <div class="two-cols">
    <div>
      <h2>First column</h2>
      <OpeningParagraph></OpeningParagraph>
      <p>Nam vulputate diam nec tempor bibendum. Donec luctus augue eget malesuada ultrices. Phasellus turpis est, posuere sit amet dapibus ut, facilisis sed est. Nam id risus quis ante semper consectetur eget aliquam lorem. Vivamus tristique elit dolor, sed pretium metus suscipit vel. Mauris ultricies lectus sed lobortis finibus. Vivamus eu urna eget velit cursus viverra quis vestibulum sem. Aliquam tincidunt eget purus in interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
    </div>

    <div>
      <h2>Second column</h2>
      <p>Nam vulputate diam nec tempor bibendum. Donec luctus augue eget malesuada ultrices. Phasellus turpis est, posuere sit amet dapibus ut, facilisis sed est. Nam id risus quis ante semper consectetur eget aliquam lorem. Vivamus tristique elit dolor, sed pretium metus suscipit vel. Mauris ultricies lectus sed lobortis finibus. Vivamus eu urna eget velit cursus viverra quis vestibulum sem. Aliquam tincidunt eget purus in interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
    </div>
  </div>
</template>

<script type="text/babel">
  import OpeningParagraph from './OpeningParagraph.vue'

  export default {
    name: 'stageground',
    components: {
      OpeningParagraph
    },
    data () {
      return {
        msg: 'Welcome to Your Vue.js App'
      }
    }
  }
</script>

<style scoped>

  h1 {
    font-family: Max;
    clear: both;
  }

  h2 {
    font-family: OldStyleSmallCaps;
    clear: both;
  }

  p {
    clear: both;
  }

  .two-cols {
    font-family: Oldstyle;
    background-color:white;
  }

  div:nth-of-type(1) {
    width: 48%;
  }

  div:nth-of-type(2) {
    width: 48%;
  }

</style>
