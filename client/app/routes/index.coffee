import Ember from 'ember'

export default Ember.Route.extend
  beforeModel: ->
    session = this.get('session')
    if session?.isAuthenticated
      this.transitionTo(
        'residence',
        this.store.user.find(session.get 'id').get 'residence'
      )
    else
      console.log('not isAuthenticated, this.get(session):', session);
