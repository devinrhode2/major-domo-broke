// app/models/residence.js

export default DS.Model.extend({
  users: DS.hasMany('user'),
  address: DS.attr('string')
  city: DS.attr('string'),
  state: DS.attr('string'),
  country: DS.attr('string')
})

// app/models/user.js
export default DS.Model.extend({
  firstName: DS.attr('string'),
  lastName: DS.attr('string'),
  purchases: DS.hasMany('purchase', { async: true }),
  todos: DS.hasMany('todo', { async: true }),
  posts: DS.hasMany('post', { async: true }),
  residence: DS.belongsTo('residence')
});

// app/models/post.js
export default DS.Model.extend({
  author: DS.belongsTo('user'),
  message: DS.attr('string'),
  picture: DS.attr(''),
  comments: DS.hasMany('comment'),
  createdAt: DS.attr('date')
});

// app/models/purchase.js
import Post from 'models/todo.js'

export default Post.extend({
  cost: DS.attr('number')
});

// app/models/todo.js
import Post from 'models/post.js'

export default Post.extend({
  points: DS.attr('number')
});

// app/models/comment.js
export default DS.Model.extend({
  message: DS.attr('string'),
  author: DS.belongsTo('user', { async: true }),
  post: DS.belongsTo('post', { async: true })
});
