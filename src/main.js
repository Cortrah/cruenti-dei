import Vue from 'vue'
import App from './App'
import router from './router.js'

import {ApolloClient} from 'apollo-client'
import {HttpLink} from 'apollo-link-http'
import {InMemoryCache} from 'apollo-cache-inmemory'
import VueApollo from 'vue-apollo'

import "./theme/index.css"
import ElementUI from 'element-ui'

Vue.use(VueApollo);
Vue.use(ElementUI);
Vue.config.productionTip = false;

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
    router,
    template: '<App/>',
    components: {App}
});
