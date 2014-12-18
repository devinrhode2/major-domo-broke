import Ember from 'ember'

export default Ember.Route.extend(
  beforeModel: ->
    if @get('session')?.isAuthenticated
      @transitionTo 'residence', @store.user.find(@get('session').id).residence
)