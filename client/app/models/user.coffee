`import DS from 'ember-data';`

User = DS.Model.extend
  firstName: DS.attr 'string'
  lastName:  DS.attr 'string'
  purchases: DS.hasMany 'purchase'
  todos:     DS.hasMany 'todo'
  posts:     DS.hasMany 'post'
  residence: DS.belongsTo 'residence'

`export default User;`