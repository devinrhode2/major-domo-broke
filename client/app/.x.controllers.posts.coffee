import Ember from 'ember'

# Not including this into the main app tree right now

export default Ember.ObjectController.extend(
  actions: 
    addPurchase: ->
      alert 'addPurchase'
      //var title = this.get('')
    addCompleted: ->
      alert 'addCompleted'
      // body...
    broadcastMessage: ->
      alert 'broadcastMessage'
)