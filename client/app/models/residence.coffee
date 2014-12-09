`import DS from 'ember-data';`

Residence = DS.Model.extend
  users: DS.hasMany 'user'
  address: DS.attr 'string'
  city: DS.attr 'string'
  state: DS.attr 'string'
  country: DS.attr 'string'

`export default Residence;`