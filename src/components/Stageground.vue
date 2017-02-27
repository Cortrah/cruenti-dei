<template>
    <div id="stageground">
        <div class="realms">
            Realms
        </div>
        <div class="main">
            <div class="header">
                header
            </div>
            <Map></Map>
            <div class="story">
                Story
            </div>
        </div>
        <div class="actions">
            Actions
        </div>
    </div>
</template>

<script type="text/babel">
    import Map from './Map.vue'

    export default {
    name: 'stageground',
    components: {
        Map
    },
    data () {
      return {
        msg: 'Welcome to Your Vue.js App'
      }
    }
  }
</script>

<style>
    .realms {
        background: #b48157;
        color: white;
        min-width: 360px;
        max-width: 360px;
        height: 1600px;
    }

    .actions {
        background: #b44e6e;
        color: white;
        min-width: 360px;
        max-width: 360px;
        height: 100%;
    }

    .main {
        background: #878a56;
        color: white;
        width: 100%;
        height: 100%;
        flex-direction: column;
    }

    .header {
        background: #5380a2;
        color: #ffffff;
        height: 80px;
        max-height: 120px;
        width: 100%;
    }

    .map {
        background: #d4ac78;
        color: white;
        height: 50%;
        width: 100%;

    }

    .story {
        background: #a36cb4;
        color: white;
        height: 50%;
        width: 100%;
    }

</style>
