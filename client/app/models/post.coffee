`import DS from 'ember-data';`

Post = DS.Model.extend
  message: DS.attr 'string'
  picture: DS.attr()
  comments: DS.hasMany 'comment', async: true
  user: DS.belongsTo 'user'
  residence: DS.belongsTo 'residence'
  createdAt: DS.attr 'date', defaultValue: Date.now
  views: DS.hasMany 'views' # For likes and views

`export default Post;`