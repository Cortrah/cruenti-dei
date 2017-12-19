import Vue from 'vue'
import Router from 'vue-router'
import GameMap from '@/components/GameMap/GameMap'

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'GameMap',
      component: GameMap
    }
  ]
})
