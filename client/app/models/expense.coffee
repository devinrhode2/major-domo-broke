import DS from 'ember-data'

export default DS.Model.extend
  depleted : DS.attr 'string'
  low      : DS.attr 'string'
  residence: DS.belongsTo 'residence'
  rev      : DS.attr 'string'
