import { configure } from '@storybook/vue';

import Vue from 'vue';
import Vuex from 'vuex'; // Vue plugins

// Import your custom components.
import ErrantryList from '../src/components/ErrantryList.vue';
import OpeningParagraph from '../src/components/OpeningParagraph.vue';

// Install Vue plugins.
Vue.use(Vuex);

// Register custom components.
Vue.component('errantry-list', ErrantryList);
Vue.component('opening-paragraph', OpeningParagraph);

function loadStories() {
    // You can require as many stories as you need.
    require('../src/stories');
}

configure(loadStories, module);
