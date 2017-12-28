<template>
    <div>
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

</script>

<style scoped>
</style>