import DS from 'ember-data'

export default DS.Model.extend
  firstName: DS.attr 'string'
  lastName : DS.attr 'string'
  email    : DS.attr 'string' # plugin to use email as primary key/id alias?
  residence: DS.belongsTo 'residence'

  tallies  : DS.hasMany 'tally'
  purchases: DS.hasMany 'purchase'

  rev      : DS.attr 'string'
