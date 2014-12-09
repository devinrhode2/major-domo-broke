`import DS from 'ember-data';`
`import Post from './post';`

Purchase = Post.extend
  cost: DS.attr 'number'

`export default Purchase;`