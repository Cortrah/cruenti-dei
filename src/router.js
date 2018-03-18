import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/layouts/Home'

import GameMap from '@/components/GameMap/BaseMap'

import PublicMap from '@/layouts/PublicMap'
import RealmMap from '@/layouts/RealmMap'
import DeiMap from '@/layouts/DeiMap'

Vue.use(Router);

export default new Router({
  routes: [
      {
          path: '/',
          name: 'Home',
          component: Home
      }, {
          path: '/GameMap',
          name: 'GameMap',
          component: GameMap
      }, {
          path: '/PublicMap',
          name: 'PublicMap',
          component: PublicMap
      }, {
          path: '/RealmMap',
          name: 'RealmMap',
          component: RealmMap
      }, {
          path: '/DeiMap',
          name: 'DeiMap',
          component: DeiMap
      }
  ]
})
