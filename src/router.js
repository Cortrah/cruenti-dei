import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/layouts/Home'
import GameMap from '@/components/GameMap/GameMap'
import PublicMap from '@/components/GameMap/PublicMap'
import RealmMap from '@/components/GameMap/RealmMap'
import DeiMap from '@/components/GameMap/DeiMap'
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
