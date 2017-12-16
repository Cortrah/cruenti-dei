<template>
    <div id="stageground">
        <div class="realms">
            <Errantry></Errantry>
        </div>
        <div class="main">
            <div class="header">
                header
            </div>
            <GameMap></GameMap>
            <Story></Story>
        </div>
        <div class="actions">
            Actions
        </div>
    </div>
</template>

<script type="text/babel">
    import GameMap from '../components/GameMap.vue'
    import Story from '../components/TwoColumnLayout.vue'
    import Errantry from '../components/ErrantryList.vue'

    export default {
    name: 'stageground',
    components: {
      GameMap, Story, Errantry
    },
    data () {
      return {
        msg: 'Welcome to Your Vue.js App'
      }
    }
  }
</script>

<style scoped>

    .stageground {
        padding: 0;
        margin: 0;
        background: black;
        color: white;
        display: flex;
    }

    div {
        padding: 10px;
        margin: 0;
        color: white;
        display: flex;
        width: 100%;
    }

    .phone-up {
        display: flex;
    }

    .realms {
        background: #b48157;
        color: white;
        min-width: 360px;
        max-width: 360px;
        height: 1200px;
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
    }

    .story {
        background: #a36cb4;
        color: white;
        height: 50%;
        width: 100%;
    }

</style>
