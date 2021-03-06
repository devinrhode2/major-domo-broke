/**
* Post.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {

  attributes: {

    message : { type: 'string' },

    picture : { type: 'string' },

    comments : { type: 'has-many' },

    user : { type: 'belongs-to' },

    users : { type: 'has-many' },

    residence : { type: 'belongs-to' },

    createdAt : { type: 'datetime' }
  }
};

