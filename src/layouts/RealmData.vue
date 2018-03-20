<template>
  <div class="main-page">
    <h1>Realm Data</h1>
    {{ realmData.name}}
  </div>
</template>

<script>
    import gql from 'graphql-tag'

    const REALM_TURN_QUERY = gql`
          query($realmId:Long!){
            realm(id:$realmId) {
              name,
            }
          }
        }`;

    export default {
        name: 'realm-data',
        data () {
            return {
                realmData: {}
            }
        },
        apollo: {
            realmData: {
                query: REALM_TURN_QUERY,
                variables: {
                    gameNum: 1,
                    turnNumber: 25,
                    realmId: 1,
                }
            },
        },
    }

    /*
    ----------------------------------
    getRealmData(game, turn, realm)
    ----------------------------------
    Realm
        isi, tv, type, religion, homeMajorMap, homeRegion, capitalLocation,
        mana, gp, ap, ...
        qrs
        tradeAgreements
        militaryAgreements

        leaderActions
        realmActions
        narratives
        regions
            pwb, tv
            items
            units
        hiddenThings of many types

    */

</script>

