`import DS from 'ember-data';`

# How many Views has a post gotten?

View = DS.Model.extend
  user     : DS.belongsTo 'user'
  views    : DS.hasMany 'views' # For likes and views
  createdAt: DS.attr 'date', defaultValue: Date.now

`export default View;`