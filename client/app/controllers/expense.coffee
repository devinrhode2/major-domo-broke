import Ember from "ember"
import moment from "moment"

export default Ember.ObjectController.extend
  depleted: ( ()->
    lastDepletion = this.get('depletionTimes').pop()
    lastPurchase = this.get('purchases').pop()
    return if lastPurchase > lastDepletion then lastPurchase else lastDepletion
  ).property('depletionTimes', 'purchases')
  depletedString: ( () ->
    moment.whatever..
    if (this.get('depleted')) {
      return ' - <span class="warning">Out of ' + this.get('name') + '</span>'
    }
  )
  depletionTimes: ( () ->
    this.get('depletionTimes').split(', ')
  ).property('depletionTimes')
  purchases: ( () ->
    each user in this.store.residence.users
      user.purchases
  )


<p>{{expense.depletedString}}
