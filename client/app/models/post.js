import DS from 'ember-data';

export default DS.Model.extend({
  user: DS.belongsTo('user'),
  message: DS.attr('string'),
  picture: DS.attr(),
  comments: DS.hasMany('comment'),
  createdAt: DS.attr('date')
});
