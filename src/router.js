import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/layouts/Home'
import BaseMap from '@/components/GameMap/BaseMap'
import SahulMap from '@/components/GameMap/SahulMap'
import PublicGameData from '@/layouts/PublicGameData'
import BorderTypeData from '@/layouts/BorderTypeData'
import Narrative from '@/layouts/Narrative'
import Diplomacy from '@/layouts/Diplomacy'
import Realms from '@/layouts/Realms'
import Agents from '@/layouts/Agents'
import Rules from '@/layouts/Rules'
import About from '@/layouts/About'

Vue.use(Router);

export default new Router({
  routes: [
      {
          path: '/',
          name: 'Home',
          component: Home
      }, {
          path: '/BaseMap',
          name: 'BaseMap',
          component: BaseMap
      }, {
          path: '/PublicGameData',
          name: 'PublicGameData',
          component: PublicGameData
      }, {
          path: '/BorderTypeData',
          name: 'BorderTypeData',
          component: BorderTypeData
      }, {
          path: '/SahulMap',
          name: 'SahulMap',
          component: SahulMap
      }, {
          path: '/Narrative',
          name: 'Narrative',
          component: Narrative
      }, {
          path: '/Diplomacy',
          name: 'Diplomacy',
          component: Diplomacy
      }, {
          path: '/Realms',
          name: 'Realms',
          component: Realms
      }, {
          path: '/Agents',
          name: 'Agents',
          component: Agents
      }, {
          path: '/Rules',
          name: 'Rules',
          component: Rules
      }, {
          path: '/About',
          name: 'About',
          component: About
      }
  ]
})
