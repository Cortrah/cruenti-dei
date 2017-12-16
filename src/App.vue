<template>
  <div id="app">
    <Stageground></Stageground>
  </div>
</template>

<script>
  import Stageground from './layouts/Stageground.vue'
  import Story from './components/TwoColumnLayout.vue'
  import Catelog from './layouts/Catelog.vue'

  export default {
    name: 'app',
    components: {
        Stageground
    }
  }
</script>

<style>
    @font-face {
        font-family: Max;
        src: url("assets/fonts/maximilian.ttf") format("truetype");
    }

    @font-face {
        font-family: OldStyle;
        src: url("assets/fonts/oldstyle.ttf") format("truetype");
    }

    @font-face {
        font-family: OldStyleItalic;
        font-style: italic;
        src: url("assets/fonts/oldstyle_italic.ttf") format("truetype");
    }

    @font-face {
        font-family: OldStyleSmallCaps;
        font-style: italic;
        src: url("assets/fonts/oldstyle_smallcaps.ttf") format("truetype");
    }

    @media (max-width: 599px) {
        .phone-only {
            display: flex;
        }
    }

    @media (min-width: 600px) and (max-width: 899px) {
        .tablet-portrait-only {
            display: flex;
        }
    }

    @media (min-width: 600px) {
        .tablet-portrait-up {
            display: flex;
        }
    }

    @media (min-width: 900px) and (max-width: 1199px) {
        .tablet-landscape-only {
            display: flex;
        }
    }

    @media (min-width: 900px) {
        .tablet-landscape-up {
            display: flex;
        }
    }

    @media (min-width: 1200px) and (max-width: 1799px) {
        .desktop-only {
            display: flex;
        }
    }

    @media (min-width: 1200px) {
        .desktop-up {
            display: flex;
        }
    }

    @media (min-width: 1800px) {
        .big-desktop-up {
            display: flex;
        }
    }
</style>
