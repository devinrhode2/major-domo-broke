import DS from 'ember-data'

export default DS.Model.extend
  users  : DS.hasMany 'user'
  posts  : DS.hasMany 'post'
  address: DS.attr 'string'
  city   : DS.attr 'string'
  state  : DS.attr 'string'
  zip    : DS.attr 'string'
  country: DS.attr 'string'