import DS from 'ember-data'

export default DS.Model.extend
  points: DS.attr 'number', defaultValue: 1
  name  : DS.attr 'string' # Make primary key?
  rev   : DS.attr 'string'