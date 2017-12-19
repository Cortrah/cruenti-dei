<template>
    <el-container>
        <el-container>
            <el-header>
                <el-menu
                        :default-active="activeIndex2"
                        class="el-menu-demo"
                        mode="horizontal"
                        @select="handleSelect"
                        background-color="#333"
                        text-color="#fff"
                        active-text-color="#ffd04b">
                    <el-menu-item index="1">OLD-IMPERIAL</el-menu-item>
                    <el-submenu index="2">
                        <template slot="title">Map</template>
                        <el-menu-item index="2-1">Sahul</el-menu-item>
                        <el-menu-item index="2-2">The Underlands</el-menu-item>
                        <el-menu-item index="2-3">Oratoa</el-menu-item>
                        <el-menu-item index="2-4">Effan</el-menu-item>
                    </el-submenu>
                    <el-submenu index="3">
                        <template slot="title">Turn 23: 1445-1449</template>
                        <el-menu-item index="3-1">1445</el-menu-item>
                        <el-menu-item index="3-2">1446</el-menu-item>
                        <el-menu-item index="3-3">1447</el-menu-item>
                        <el-menu-item index="3-4">1448</el-menu-item>
                        <el-menu-item index="3-5">1449</el-menu-item>
                    </el-submenu>

                    <el-menu-item index="4">
                        <a href="http://www.sardarthion.com" target="_blank">
                            Cruenti Dei
                        </a>
                    </el-menu-item>
                </el-menu>
            </el-header>
                <el-container>
                    <el-main type="flex">MAP</el-main>
                    <el-aside width="50%" >
                        <el-tabs type="border-card">
                            <el-tab-pane label="TURN">
                                <two-column-layout/>
                            </el-tab-pane>
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
    import TwoColumnLayout from '../components/Booklet/TwoColumnLayout.vue'
    import Errantry from '../components/TurnResults/ErrantryList.vue'

    export default {
        name: 'FullScreenEl',
        components: {
            GameMap, TwoColumnLayout, Errantry
        },
        data () {
            return {
                msg: 'Old Imperial',
                activeIndex: '1',
                activeIndex2: '1'
            }
        },
        methods: {
            handleSelect(key, keyPath) {
                console.log(key, keyPath);
            }
        }
    }
</script>

<style>
    .el-header, .el-footer {
        background-color: #0d0d0d;
        color: white;
    }

    .el-aside {
        background-color: #D3DCE6;
        color: #333;
        max-width: 820px;
    }

    .el-main {
        background-color: #E9EEF3;
        color: #333;
    }

    body > .el-container {
        margin-bottom: 40px;
    }
</style>
