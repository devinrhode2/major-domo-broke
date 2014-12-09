`import DS from 'ember-data';`
`import Post from './post';`

Todo = Post.extend
  points: DS.attr 'number', defaultValue: 1

`export default Todo;`