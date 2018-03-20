<template>
  <div class="main-page">
    <h1>Games</h1>
    <div v-for="game of gameList">
      <div>{{ game.name }}</div>
      <div>currentTurnId:     {{ game.currentTurn.id}}</div>
      <div v-for="turn of game.turns">
        <div>number:          {{ turn.number }}</div>
        <div>startingYear:    {{ turn.startingYear}}</div>
        <div>endingYear:      {{ turn.endingYear}}</div>
        <div>realms</div>
        <div v-for="realm of turn.realms">
          <div>name:          {{ realm.name }}</div>
          <div>herald:        {{ realm.herald }}</div>
          <div>tv:            {{ realm.startingTv }}</div>
          <div>isi:           {{ realm.startingIsi }}</div>
          <div>regions</div>
          <div v-for="region of realm.regions">
            <div>name:        {{ region.label }}</div>
            <div>gp:          {{ region.gp }}</div>
            <div>ap:          {{ region.ap }}</div>
            <div>nfp:         {{ region.nfp }}</div>
            <div>mana:        {{ region.mana }}</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
    import gql from 'graphql-tag'

    const PUBLIC_GAME_QUERY = gql`
        query($gameNum:Int!){
          gameList(offset:$gameNum) {
            id,
            name,
            currentTurn{
              id,
              name,
              number,
              startingYear,
              endingYear,
            },
            turns {
              id,
              name,
              number,
              startingYear,
              endingYear,
              narratives {
                id,
                name,
              },
              realms {
                id,
                name,
                code,
                label,
                description,
                capitalLocation{
                  id,
                  name,
                  region{
                    id,
                  }
                },
                homeRegion{
                  id,
                },
                realmType{
                  id,
                  name,
                },
                startingIsi,
                startingTv,
                tradeAgreements{
                  id,
                  initiatingRealm{
                    id,
                    label,
                  },
                  acceptingRealm{
                    id,
                    label,
                  },
                },
                herald {
                  id,
                  name,
                },
                startingTv,
                startingIsi,
                regions {
                  id,
                  label,
                }
              },
              majorMaps {
                id,
                name,
                code,
                label,
                description,
                x,
                y,
                height,
                width,
                bg,
                regions {
                  id,
                  label,
                  gp,
                  ap,
                  nfp,
                  mana,
                  kindred{
                    id,
                    code,
                  },
                  realm {
                    id,
                    label,
                  },
                  allegiance{
                    id,
                    name,
                  },
                  hasRoad,
                  bordersVolcano,
                  isInimical,
                  x,
                  y,
                  w,
                  h,
                  path,
                  locations {
                    id,
                    name,
                    code,
                    label,
                    icon,
                    x,
                    y,
                    path
                  },
                }
              }
            }
          }
        }`;

    export default {
        name: 'public-game-data',
        data () {
            return {
                gameList: {}
            }
        },
        apollo: {
            gameList: {
                query: PUBLIC_GAME_QUERY,
                variables: {
                    gameNum: 1,
                }
            },
        },
    }
</script>

