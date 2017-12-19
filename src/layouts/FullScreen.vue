<template>
    <el-container>
        <el-container>
            <el-header>OLD-IMPERIAL</el-header>
                <el-container>
                    <el-main type="flex">MAP</el-main>
                    <el-aside width="50%" >
                        <el-tabs type="border-card">
                            <el-tab-pane label="TURN">TURN</el-tab-pane>
                            <el-tab-pane label="REALM">REALM</el-tab-pane>
                            <el-tab-pane label="LEADER">LEADER</el-tab-pane>
                            <el-tab-pane label="RULES">RULES</el-tab-pane>
                            <el-tab-pane label="DIPLOMACY">DIPLOMACY</el-tab-pane>
                        </el-tabs>
                    </el-aside>
                </el-container>
            <el-footer>Footer</el-footer>
        </el-container>
    </el-container>
</template>

<script type="text/babel">
    import GameMap from '../components/GameMap/GameMap.vue'
    import Story from '../components/Booklet/TwoColumnLayout.vue'
    import Errantry from '../components/TurnResults/ErrantryList.vue'

    export default {
        name: 'FullScreen',
        components: {
            GameMap, Story, Errantry
        },
        data () {
            return {
                msg: 'Old Imperial'
            }
        }
    }
</script>

<style>
    .el-header, .el-footer {
        background-color: #B3C0D1;
        color: #333;
        text-align: center;
        line-height: 60px;
    }

    .el-aside {
        background-color: #D3DCE6;
        color: #333;
        max-width: 820px;
        text-align: center;
        line-height: 200px;
    }

    .el-main {
        background-color: #E9EEF3;
        color: #333;
        text-align: center;
        line-height: 160px;
    }

    body > .el-container {
        margin-bottom: 40px;
    }
</style>
