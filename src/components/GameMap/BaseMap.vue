<template>
  <div class="pane" v-bind:style="{'max-height':paneMaxHeight}">
      <div id="toolbar">
          <el-button-group style="width:280px; float:left">
              <el-button type="primary" icon="el-icon-picture" size="mini"></el-button>
              <el-button type="primary" icon="el-icon-location" size="mini"></el-button>
              <el-button type="primary" icon="el-icon-view" size="mini"></el-button>
              <el-button type="primary" icon="el-icon-edit" size="mini"></el-button>
              <el-button type="primary" icon="el-icon-view" size="mini"></el-button>
              <el-button type="primary" icon="el-icon-edit" size="mini"></el-button>
          </el-button-group>
          <div class="block">
              <el-slider v-model="zoom"
                         style="width:300px; float:right; padding-right:15px">
              </el-slider>
          </div>
      </div>
      <div id="mapGround">
          <img src="./Sahul20_22.svg" height="100%" width="100%"></img>
      </div>
  </div>
</template>

<script>

    export default {
        name: "BaseMap",
        components: {
        },
        data(){
            return {
                zoom:30,
            }
        },
        computed: {
            paneMaxHeight: function () {
                return (window.innerHeight - 180) + "px";
            },
        },
        methods: {
            formatTooltip(val) {
                return val / 100;
            }
        }
    }
</script>

<style scoped>

  #toolbar {
      padding: 5px;
      height: 30px;
      width: 100%;
      background-color: #aaa;
  }

  .pane {
    overflow: visible;
  }

</style>
