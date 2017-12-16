import Vue from 'vue';

import { storiesOf } from '@storybook/vue';

import ErrantryList from '../components/ErrantryList.vue';
import OpeningParagraph from '../components/OpeningParagraph.vue';

storiesOf('PDF Layout Elements', module)
    .add('Free Companies', () => ({
        components: { ErrantryList },
        template: '<ErrantryList/>'
    }))
    .add('Opening Paragraph', () => ({
        components: { OpeningParagraph },
        template: '<OpeningParagraph/>'
}));

