<template>
    <el-container>
        <el-header>
            <el-menu :default-active="activeIndex2"
                     class="el-menu-demo"
                     mode="horizontal"
                     @select="handleSelect"
                     background-color="#000"
                     text-color="#fff"
                     active-text-color="#ffd04b">
                <el-menu-item index="1">
                    OLD-IMPERIAL
                </el-menu-item>

                <el-submenu v-if="$route.name === 'BaseMap'" index="2">
                    <template slot="title">Map</template>
                    <el-menu-item index="2-1">Sahul</el-menu-item>
                    <el-menu-item index="2-2">The Underlands</el-menu-item>
                    <el-menu-item index="2-3">Oratoa</el-menu-item>
                    <el-menu-item index="2-4">Effan</el-menu-item>
                </el-submenu>
                <el-submenu v-if="$route.name === 'BaseMap'"  index="3">
                    <template slot="title">Turn 23: 1445-1449</template>
                    <el-menu-item index="3-1">1445</el-menu-item>
                    <el-menu-item index="3-2">1446</el-menu-item>
                    <el-menu-item index="3-3">1447</el-menu-item>
                    <el-menu-item index="3-4">1448</el-menu-item>
                    <el-menu-item index="3-5">1449</el-menu-item>
                </el-submenu>
            </el-menu>
        </el-header>
        <el-main>
            <div id="app">
                <router-view/>
            </div>
        </el-main>
        <el-footer>
            <router-link to="/">Home</router-link>
            <router-link to="/BaseMap">BaseMap</router-link>
            <router-link to="/PublicMap">PublicMap</router-link>
            <router-link to="/RealmMap">RealmMap</router-link>
            <router-link to="/DeiMap">DeiMap</router-link>
            <router-link to="/Narrative">Narrative</router-link>
            <router-link to="/Diplomacy">Diplomacy</router-link>
            <router-link to="/Realms">Realms</router-link>
            <router-link to="/Agents">Agents</router-link>
            <router-link to="/Rules">Rules</router-link>
            <router-link to="/About">About</router-link>
        </el-footer>
    </el-container>

</template>

<script>
    import Home from './layouts/Home.vue'
    import BaseMap from './components/GameMap/BaseMap.vue'
    import Bordertypes from './components/GameMap/Bordertypes.vue'
    import Narrative from './layouts/Narrative.vue'
    import Diplomacy from './layouts/Diplomacy.vue'
    import Realms from './layouts/Realms.vue'
    import Agents from './layouts/Agents.vue'
    import Rules from './layouts/Rules.vue'
    import About from './layouts/About.vue'

    export default {
        name: 'app',
        components: {
            Home, BaseMap, Bordertypes, Narrative, Diplomacy, Realms, Agents, Rules, About
        },
        data () {
            return {
                state: "splash",
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
        background-color: #fff;
    }

    h1 {
        font-family: Max;
        font-size: 3em;
        color: black;
    }

    p {
        font-family: OldStyle;
        font-size: 1.2em;
        color: black;
    }

    a:link {
        color: #dee2ee;
    }

    a:visited {
        color: #e5bc63;
    }

    a:hover {
        color: #e5d246;
    }

    a:active {
        color: #7a7a7a;
    }

    #app {
        font-family: 'OldStyle';
        text-align: center;
        color: #2c3e50;
        padding: 0;
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
        background-color: #fff;
        color: #333;
        max-width: 820px;
    }

    .el-main {
        background-color: #fff;
        color: #333;
        height: 1200px;
        overflow: visible;
        margin: 0;
        padding: 0 !important;
    }

    .game-map-col {
        background-color: #336699;
        color: white;
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
