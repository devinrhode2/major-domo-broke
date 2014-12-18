import Ember from 'ember'

export default Ember.Route.extend(
  beforeModel: -> @transitionTo('posts', @get('posts'))
)