/**
* Residence.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {

  attributes: {

    users : { type: 'has-many' },

    address : { type: 'string' },

    city : { type: 'string' },

    state : { type: 'string' },

    country : { type: 'string' }
  }
};

