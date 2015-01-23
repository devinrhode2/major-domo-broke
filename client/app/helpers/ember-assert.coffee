import Em from 'ember'

export default Ember.Handlebars.makeBoundHelper (args...) ->
  Ember.assert args...
  return ''