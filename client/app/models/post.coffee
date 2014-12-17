import DS from 'ember-data'

export default DS.Model.extend
  message  : DS.attr 'string'
  picture  : DS.attr()
  comments : DS.hasMany 'comment', async: true
  user     : DS.belongsTo 'user'
  users    : DS.hasMany 'user' # Represents views a post has gotten so far
  residence: DS.belongsTo 'residence'
  createdAt: DS.attr 'date', defaultValue: Date.now