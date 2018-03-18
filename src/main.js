import Vue from 'vue'
import App from './App'

import {ApolloClient} from 'apollo-client'
import {HttpLink} from 'apollo-link-http'
import {InMemoryCache} from 'apollo-cache-inmemory'
import VueApollo from 'vue-apollo'

import "./theme/index.css"
import ElementUI from 'element-ui'
import routerInstance from './router.js';
import storeInstance from './store/store.js'

Vue.use(VueApollo);
Vue.use(ElementUI);
Vue.config.productionTip = false;
Vue.config.devTools = true;

Vue.prototype.$bus = new Vue();

const httpLink = new HttpLink({
    uri: 'http://localhost:8080/graphql',
});

const apolloClient = new ApolloClient({
    link: httpLink,
    cache: new InMemoryCache(),
    connectToDevTools: true,
});

const apolloProvider = new VueApollo({
    defaultClient: apolloClient,
});

new Vue({
    el: '#app',
    apolloProvider,
    router: routerInstance,
    store: storeInstance,
    template: '<App/>',
    components: {App}
});
