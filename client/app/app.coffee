`import Ember from 'ember';`
`import Resolver from 'ember/resolver';`
`import loadInitializers from 'ember/load-initializers';`
`import config from './config/environment';`

Ember.MODEL_FACTORY_INJECTIONS = true

App = Ember.Application.extend
  modulePrefix    : config.modulePrefix
  podModulePrefix : config.podModulePrefix
  Resolver        : Resolver

Date = window.Date or {}
Date.now or Date.now = -> new Date().getTime()

loadInitializers App, config.modulePrefix

`export default App;`