<template>
  <div class="pane">
    <h1>Games</h1>
    <div v-for="game of gameList">
      <div>{{ game.name }}</div>
    </div>
  </div>
</template>

<script>
    import gql from 'graphql-tag'

    const PUBLIC_MAP_QUERY = gql`
        query($gameNum:Int!){
          gameList(offset:$gameNum) {
            id,
            name,
            currentTurn{
              id
            },
            turns {
              id,
              name,
              number,
              startingYear,
              endingYear,
              narratives {
                id
              },
              realms {
                id,
                name,
                code,
                label,
                herald {
                  id,
                  name
                }
                startingTv,
                startingIsi,
                regions {
                  id,
                  label,
                  gp,
                  ap,
                  nfp,
                  mana
                }
              },
              majorMaps {
                id,
                name
              }
            }
          }
        }`;

    export default {
        name: 'public-map',
        data () {
            return {
                gameList: {}
            }
        },
        apollo: {
            gameList: {
                query: PUBLIC_MAP_QUERY,
                variables: {
                    gameNum: 1,
                }
            },
        },
    }

    /*
    -----------------------------
    getPublicData(game, turn)
    -----------------------------
    Game
        turns
        currentTurn

    Turn(public)
        narratives
        majorMaps
            regions
                name, code, label, description
                realm, allegiance
                gp, ap, nfp, mana,
                terrain, kindred, religion
                features, constructs, locations
                hasRoad, bordersVolcano, isInimical
        realms
            isi, tv, type, religion, homeMajorMap, homeRegion, capitalLocation,
            mana, gp, ap, ...
            qrs
            tradeAgreements
            militaryAgreements

    */
</script>

