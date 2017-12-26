import Vue from 'vue'
import {ApolloClient} from 'apollo-client'
import {HttpLink} from 'apollo-link-http'
import {InMemoryCache} from 'apollo-cache-inmemory'
import VueApollo from 'vue-apollo'
import App from './App'
import router from './router'
import "./theme/index.css"
import ElementUI from 'element-ui'

const httpLink = new HttpLink({
    uri: 'http://localhost:8080/graphql',
});

const apolloClient = new ApolloClient({
    link: httpLink,
    cache: new InMemoryCache(),
    connectToDevTools: true,
});

Vue.use(VueApollo);
Vue.use(ElementUI);
Vue.config.productionTip = false;

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
