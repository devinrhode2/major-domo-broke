import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('user', { path: 'users/:user_id' }, function() { });
  this.resource('residence', { path: 'residences/:residence_id' }, function() { });
  this.resource('post', { path: 'posts/:post_id' }, function() { });
  this.resource('purchase', { path: 'purchases/:purchase_id' }, function() { });
  this.resource('todo', { path: 'todos/:todo_id' }, function() { });
  this.resource('comment', { path: 'comments/:comment_id' }, function() { });
});

export default Router;
