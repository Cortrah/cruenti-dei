<template>
    <div class="main-page">
        <div v-for="borderType of borderTypeList">
            <div>
                <span>{{ borderType.code }}</span>
                <span>{{ borderType.name }}</span>
                <div>{{ borderType.description }}</div>
                <span v-if="borderType.landCost != null">
                    <i>land:</i>{{ borderType.landCost }}
                </span>
                <span v-if="borderType.navalCost != null">
                    <i>naval:</i>
                    {{ borderType.navalCost }}
                </span>
                <span v-if="borderType.landCost != null">
                    <i>air:</i>
                    {{ borderType.airCost }}
                </span>
                <span v-if="borderType.manaCost != null">
                    <i>mana:</i>
                    {{ borderType.manaCost }}
                </span>
            </div>
            <hr>
        </div>
        <div v-for="regionBorder of regionBordersList">
            <div>{{ regionBorder.name }}
                <i>isDirectional:</i>
                {{ regionBorder.borderType.isDirectional}}
            </div>
        </div>
    </div>
</template>

<script>
    import gql from 'graphql-tag'

    const BORDER_TYPES_QUERY = gql`
        {
          borderTypeList {
            id,
            name,
            code,
            description,
            landCost,
            airCost,
            navalCost,
            manaCost,
            isDirectional,
          }
        }`;

    const REGION_BORDERS_QUERY = gql`
        {
          regionBordersList {
            id,
            name,
            code,
            source {
              id
            },
            sink {
              id
            },
            borderType{
              id,
              code,
              isDirectional,
            }
          }
        }`;

    export default {
        name: 'border-type-data',
        data () {
            return {
                borderTypeList: [],
                regionBordersList: []
            }
        },
        apollo: {
            borderTypeList: BORDER_TYPES_QUERY,
            regionBordersList: REGION_BORDERS_QUERY,
        },
    }

</script>

