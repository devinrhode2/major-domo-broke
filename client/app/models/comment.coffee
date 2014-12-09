`import DS from 'ember-data';`

Comment = DS.Model.extend
  message: DS.attr 'string'
  user   : DS.belongsTo 'user'
  post   : DS.belongsTo 'post', async: true

`export default Comment;`