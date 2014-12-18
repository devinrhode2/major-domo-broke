import Ember from 'ember'
import config from './config/environment'

Router = Ember.Router.extend(
  location: config.locationType
)

Router.map ->
  @resource('residence', path: 'residences/:residence_id', ()->
    @resource 'post'   , path: 'posts/:post_id'          , ()->
  )
  @resource('user'     , path: 'users/:user_id'          , ()->
    @resource 'purchase' , path: 'purchases/:purchase_id'  , ()->
    @resource 'todo'     , path: 'todos/:todo_id'          , ()->
    @resource 'comment'  , path: 'comments/:comment_id'    , ()->
  )

export default Router