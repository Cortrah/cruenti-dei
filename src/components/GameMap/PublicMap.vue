<template>
  <div class="pane">
    <div v-for="borderType of borderTypeList">
      <div>{{ borderType.name }}</div>
    </div>
  </div>
</template>

<script>
    import gql from 'graphql-tag'

    const BORDER_TYPES_QUERY = gql`
        {
          borderTypeList {
            id
            name
          }
        }`;

    export default {
        name: 'border-type',
        data () {
            return {
                borderTypeList: []
            }
        },
        apollo: {
            borderTypeList: BORDER_TYPES_QUERY,
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

