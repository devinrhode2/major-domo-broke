import Em from 'ember'

export default Ember.Handlebars.makeBoundHelper (message, valA, valB) ->
  if !valTwo then valTwo = message
  Ember.assert valTwo == valOne
  return ''