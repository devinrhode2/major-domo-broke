import DS from 'ember-data'

export default DS.Model.extend
  firstName: DS.attr 'string'
  lastName : DS.attr 'string'
  email    : DS.attr 'string'
  residence: DS.belongsTo 'residence'

  tallies  : DS.hasMany 'tally'

  rev      : DS.attr 'string'

  chore activity data
  purchases

  purchases: DS.hasMany 'purchase'
  todos    : DS.hasMany 'todo'
  posts    : DS.hasMany 'post'




travis
TP $5
purchase time
depletion time?
updatedAt?

kayla
evoo $6

brent
detergent $7



















