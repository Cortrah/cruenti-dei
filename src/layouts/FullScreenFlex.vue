<template>
    <el-container>
        <el-header>
            <el-menu
                    :default-active="activeIndex2"
                    class="el-menu-demo"
                    mode="horizontal"
                    @select="handleSelect"
                    background-color="#000"
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
        <el-main>
            <el-row>
                <el-col :span="12" class="game-map-col">
                    <game-map/>
                </el-col>
                <el-col :span="12" class="content-col">
                    <el-tabs type="border-card">
                        <el-tab-pane label="TURN">
                            <two-column-layout/>
                        </el-tab-pane>
                        <el-tab-pane label="REALM">REALM</el-tab-pane>
                        <el-tab-pane label="LEADER">LEADER</el-tab-pane>
                        <el-tab-pane label="DIPLOMACY">DIPLOMACY</el-tab-pane>
                        <el-tab-pane label="RULES">
                            <border-type></border-type>
                        </el-tab-pane>
                    </el-tabs>
                </el-col>
            </el-row>
        </el-main>
        <el-footer>Footer</el-footer>
    </el-container>
</template>

<script type="text/babel">
    import GameMap from '../components/GameMap/GameMap.vue'
    import TwoColumnLayout from '../components/Booklet/TwoColumnLayout.vue'
    import Errantry from '../components/TurnResults/ErrantryList.vue'
    import BorderType from "../components/Rules/BorderType";

    export default {
        name: 'FullScreenFlex',
        components: {
            BorderType,
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

    body {
        padding: 0;
        margin: 0;
        background-color: #000;
    }

    .el-header, .el-footer {
        background-color: #000;
        color: white;
    }

    .el-footer {
        height: 60px;
        width: 100%;
        position: absolute;
        bottom: 0px;
    }

    .el-aside {
        background-color: #D3DCE6;
        color: #333;
        max-width: 820px;
    }

    .el-main {
        background-color: #E9EEF3;
        color: #333;
        max-height: 545px;
        overflow: visible;
        margin: 0;
        padding: 0 !important;
    }

    .game-map-col {
        background-color: #336699;
        color: #dee2ee;
        max-height: 545px;
        overflow: scroll;
        margin: 0;
        padding: 0;
    }

    .content-col {
        overflow: auto;
        max-height: 545px;
        margin: 0;
        padding: 0;
    }
</style>
