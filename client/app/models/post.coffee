`import DS from 'ember-data';`

Post = DS.Model.extend
  user: DS.belongsTo 'user'
  message: DS.attr 'string'
  picture: DS.attr()
  comments: DS.hasMany 'comment', async: true
  createdAt: DS.attr 'date', defaultValue: Date.now

`export default Post;`