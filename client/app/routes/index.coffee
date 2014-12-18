`import Ember from 'ember';`

IndexRoute = Ember.Route.extend(
  beforeModel: ->
    if @get('session')?.isAuthenticated
      @transitionTo 'residence', @store.user.find(@get('session').id).residence
)

`export default IndexRoute;`