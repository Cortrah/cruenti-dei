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
              <el-slider v-model="zoom" v-on:change="zoomChanged"
                         style="width:300px; float:right; padding-right:15px">
              </el-slider>
          </div>
      </div>
      <div id="mapGround">
          <img src="./Sahul20_22.svg" v-bind:class="classObject"></img>
      </div>
  </div>
</template>

<script>

    export default {
        name: "BaseMap",
        components: {
        },
        data() {
            return {
                zoom: 40,
                classObject: {
                    height: this.zoom * 100 + "%",
                    width: this.zoom * 100 + "%",
                }
            }
        },
        computed: {
            paneMaxHeight: function () {
                return (window.innerHeight - 180) + "px";
            },
        },
        methods: {
            zoomChanged: function (event) {
                this.zoom = event;
            },
        },
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
