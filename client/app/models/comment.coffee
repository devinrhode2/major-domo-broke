import DS from 'ember-data'

export default DS.Model.extend
  createdAt: DS.attr 'date', defaultValue: Date.now
  message  : DS.attr 'string'
  user     : DS.belongsTo 'user'
  post     : DS.belongsTo 'post', async: true