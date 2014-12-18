`import Ember from 'ember';`

ResidenceRoute = Ember.Route.extend(
  beforeModel: -> @transitionTo('posts', @get('posts'))
)

`export default ResidenceRoute;`