import DS from 'ember-data'

export default DS.Model.extend
  residence: DS.belongsTo 'residence'
  points: DS.attr 'number', defaultValue: 1
  tallies:DS.hasMany 'tally'
  name  : DS.attr 'string' # Make primary key?
  rev   : DS.attr 'string'