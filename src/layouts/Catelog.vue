<template>
    <div id="catelog">
        <div class="realms">
            <Errantry></Errantry>
        </div>
    </div>
</template>

<script type="text/babel">
    import Errantry from '../components/ErrantryList.vue'

    export default {
        name: 'catelog',
        components: {
            Errantry
        },
        data () {
            return {
                msg: 'a catelog of components'
            }
        }
    }
</script>

<style scoped>
</style>
