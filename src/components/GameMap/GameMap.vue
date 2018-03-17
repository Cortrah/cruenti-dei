<template>
  <div class="pane">
    <div class="toolbar">
      <input type="range" min="0" max="10" value="5" id="fader">
    </div>
    <img src="./sahul.gif"></img>
    <div v-for="borderType of borderTypeList">
      <div>{{ borderType.name }}</div>
    </div>
  </div>
</template>

<script>
    import gql from 'graphql-tag'

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

    ----------------------------------
    getRealmData(game, turn, realm)
    ----------------------------------
    Realm
        leaderActions
        realmActions
        narratives
        regions
            pwb, tv
            items
            units
        hiddenThings of many types

    ---------------------------------------
    getDeiRegionData(game, turn, region)
    ---------------------------------------
    Region
       resistance, plagueStatus, corruptionStatus
    */


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

</script>

<style scoped>

  .toolbar {
    position: absolute;
    height:20px;
    width:140px;
    background-color: #336699;
    background-opacity: .4;
  }

  .pane {
    overflow: scroll;
  }

  img {
    height:1600px;
    width:2800px;
  }
</style>
