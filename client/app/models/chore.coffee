import DS from 'ember-data'

export default DS.Model.extend
  points: DS.attr 'number', defaultValue: 1
  rev   : DS.attr 'string'