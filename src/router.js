import Vue from 'vue'
import Router from 'vue-router'
import GameMap from '@/components/GameMap/GameMap'
import Home from '@/layouts/Home'

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
    }
  ]
})
