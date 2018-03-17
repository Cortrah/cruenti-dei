# Cruenti-Dei, an Old Imperial Client

# Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# a storybook
npm run storybook

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report

# run unit tests
npm run unit

# run e2e tests
npm run e2e

# run all tests
npm test
```

url

    http://localhost:9081

# ToDo

## Layout and Typography

- [ ] Turn
- [ ] Rules
- [ ] Realm Actions
- [ ] Leader Action
- [ ] Diplomacy

## Components

- [ ] Map
    - [ ] Regions
    - [ ] RegionsBorders
    - [ ] Locations
    - [ ] Areas (the boundary of a group of regions)
- [ ] Leader Chit
- [ ] Leader Drag and drop for movement
- [ ] Leader Orbit Selector for other actions
- [ ] Leader Action Item for list of leader actions
    - [ ] dialog for editing actions
    - [ ] item for print display of minimum key info for processing
    - [ ] thumbnail item display for players

## Server [old-imperial](https://github.com/Cortrah/old-imperial)

- [X] Groovey and Grails scaffolded admin
- [X] Graphql endpoint
- [X] basic cors enabled
- [X] bordertypes query
- [ ] bordertypes mutation
- [ ] other datatypes ...
- [ ] Spring Security for fog of war proof of concept


## Discourse Theme and components for diplomacy and inline maps

- [ ] black and white minimal theme
- [ ] custom layout
- [ ] stageground plugin
- [ ] inline map plugin
- [ ] diplomatic plugins
    - [ ] in order to share data, there needs to be a treaty as to what with any conditionals
    - [ ] any communication requires a medium or a location and two or more leaders
    - [ ] possible mediums are
        - through the printers guild
        - through a herald at court
        - back ally rumors (from a leader to a group, so source can be reverse engineered sometimes)
        - message via courier
        - personal conversation at a location
        - or via a paired set of crystal balls

## references

* [vue](https://vuejs.org/v2/guide/components.html#Props)
* [vue webpack guide](http://vuejs-templates.github.io/webpack/)
* [docs for vue-loader](http://vuejs.github.io/vue-loader)
* [element](http://element.eleme.io/#/en-US/component/form)
* [apollo-client](https://www.apollographql.com/client/)
* [apollo-vue](https://github.com/akryum/vue-apollo)
* [storybook](https://github.com/storybooks/storybook)
* [jest](https://facebook.github.io/jest/docs/en/api.html)
* [vue test utils](https://vue-test-utils.vuejs.org/en/)
* [greensock](https://greensock.com/docs/)



