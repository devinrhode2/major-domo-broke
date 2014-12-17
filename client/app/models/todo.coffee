import DS from 'ember-data'
import Post from './post'

export default Post.extend
  points: DS.attr 'number', defaultValue: 1
