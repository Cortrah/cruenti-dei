import Vue from 'vue';

import { storiesOf } from '@storybook/vue';

import ErrantryList from '../components/ErrantryList.vue';
import OpeningParagraph from '../components/OpeningParagraph.vue';
import TwoColumnLayout from '../components/TwoColumnLayout.vue';

storiesOf('Typographic Elements', module)
    .add('Free Companies', () => ({
        components: { ErrantryList },
        template: '<ErrantryList/>'
    }))
    .add('TwoColumnLayout', () => ({
        components: { TwoColumnLayout },
        template: '<TwoColumnLayout/>'
    }))
    .add('Opening Paragraph', () => ({
        components: { OpeningParagraph },
        template: '<OpeningParagraph/>'

    }));

