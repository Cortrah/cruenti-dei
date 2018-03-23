<template>
    <div class="split-map">
        <base-map class="base-map"></base-map>
        <base-map class="base-map"></base-map>
    </div>
</template>

<script>
    import BaseMap from "../components/GameMap/BaseMap.vue"
    export default {
        name: 'SplitMap',
        components: {
            BaseMap
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
    .split-content{
        flex-grow: 1;
    }
</style>
