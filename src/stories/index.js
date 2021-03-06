import Vue from 'vue';

import { storiesOf } from '@storybook/vue';

import ErrantryList from '../components/TurnResults/ErrantryList.vue';
import OpeningParagraph from '../components/Booklet/OpeningParagraph.vue';
import TwoColumnLayout from '../components/Booklet/TwoColumnLayout.vue';

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

