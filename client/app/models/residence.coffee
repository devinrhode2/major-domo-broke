import DS from 'ember-data'

export default DS.Model.extend
  users   : DS.hasMany 'user'
  chores  : DS.hasMany 'chore'
  expenses: DS.hasMany 'expense'
  address : DS.attr 'string'
  city    : DS.attr 'string'
  state   : DS.attr 'string'
  zip     : DS.attr 'string'
  country : DS.attr 'string'
  rev     : DS.attr 'string'