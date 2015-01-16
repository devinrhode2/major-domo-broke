import DS from 'ember-data'

export default DS.Model.extend
  depletionTimes: DS.attr 'number'
  rev           : DS.attr 'string'