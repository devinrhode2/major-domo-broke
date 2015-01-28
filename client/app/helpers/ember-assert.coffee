import Em from 'ember'

export default Ember.Handlebars.makeBoundHelper (message, valOne, valTwo) ->
  if !valTwo then valTwo = message
  Ember.assert valTwo == valOne
  return ''