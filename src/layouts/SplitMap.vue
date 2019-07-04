<template>
    <div class="split-map">
        <base-map class="base-map"></base-map>
        <leader-action-list class="leader-actions"></leader-action-list>
    </div>
</template>

<script>
    import BaseMap from "../components/GameMap/BaseMap.vue"
    import LeaderActionList from "../components/LeaderActions/LeaderActionList"

    export default {
        name: 'SplitMap',
        components: {
            BaseMap, LeaderActionList
        }
    }
</script>

<style>
    .split-map{
        display: flex;
        flex-direction: row;
        align-items: stretch;
    }
    .base-map{
        flex-grow: 1;
        overflow: scroll;
    }
    .leader-actions{
        flex-grow: 1;
        overflow: scroll;
        min-width: 400px;
    }
    .split-content{
        flex-grow: 1;
    }
</style>
