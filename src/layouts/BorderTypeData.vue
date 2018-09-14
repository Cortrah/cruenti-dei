<template>
    <div class="main-page">
        <el-table
            :data="borderTypeList"
            style="width: 100%"
            height="800">
            <el-table-column
                prop="code"
                label="Code"
                width="150">
            </el-table-column>
            <el-table-column
                prop="name"
                label="Name"
                width="120">
            </el-table-column>
            <el-table-column
                prop="description"
                label="Description"
                width="120">
            </el-table-column>
            <el-table-column
                prop="landCost"
                label="Land"
                width="120">
            </el-table-column>
            <el-table-column
                prop="navalCost"
                label="Naval"
                width="120">
            </el-table-column>
            <el-table-column
                prop="airCost"
                label="Air"
                width="120">
            </el-table-column>
            <el-table-column
                prop="manaCost"
                label="Mana"
                width="120">
            </el-table-column>
        </el-table>
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

