import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex);
const debug = process.env.NODE_ENV !== 'production';

export const state = {
    players: [],
    messages: [],
};

export default new Vuex.Store({
    state,
    actions: {
        // ------------------
        // player actions
        // ------------------
        createTable(context, payload){
            context.commit('createTable', payload);
        },
    },
    mutations: {
        // ------------------
        // player actions
        // ------------------
        drawMistle: function(state, payload){
            let player = state.game.players[payload.playerId];
            if(player.mana >= 1 && player.deck.length > 0) {
                let drawn = player.deck[0];
                player.cards.push({cardType:"MISTLE", value: drawn});
                player.deck.splice(0, 1);
                player.deckSize = player.deck.length;
                player.mana--;
            }
        },
    }
})
