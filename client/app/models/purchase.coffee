import DS from 'ember-data'

# All purchases are assumed to be for shared items.
# In fact

export default DS.Model.extend
  cost : DS.attr 'number'
  user : DS.belongsTo 'user'
  rev  : DS.attr 'string'





# Purchase data on shared Item:

# Calculate balance for each roommate

# go through all shared items,

# class User
#   balance:
#   User.find(item.purchaser).


# contribution

# purchase is type of contribution

# chore is type of contribution

# total contributions

