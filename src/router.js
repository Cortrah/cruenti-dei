import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/layouts/Home'
import GameMap from '@/components/GameMap/GameMap'
import Bordertypes from '@/components/GameMap/Bordertypes'

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
          path: '/Bordertypes',
          name: 'Bordertypes',
          component: Bordertypes
      }
  ]
})
