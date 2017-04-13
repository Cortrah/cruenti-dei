import Vue from 'vue'
import Router from 'vue-router'
import GameMap from '@/components/GameMap'
import Story from '@/components/Story'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'GameMap',
      component: GameMap
    }
  ]
})
