<template>
    <div class="split-map">
        <base-map></base-map>
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
    }
</style>
