import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/layouts/Home'
import BaseMap from '@/components/GameMap/BaseMap'
import PublicMap from '@/layouts/PublicMap'
import RealmMap from '@/layouts/RealmMap'
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
          path: '/PublicMap',
          name: 'PublicMap',
          component: PublicMap
      }, {
          path: '/RealmMap',
          name: 'RealmMap',
          component: RealmMap
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
