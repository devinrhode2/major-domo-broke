### global EmberPouch, PouchDB, dbSync ###

# PouchDB.debug.enable('*')

# local  = new PouchDB('mydb')
# remote = new PouchDB('http://localhost:5984/mydb', {
#            ajax: { timeout: 20000 }
#          })

# sync = local.sync(remote, {live: true})
#   .on('error', ->
#     alert('There was an error saving your data, consider reloading the page')
#   )

# # Log all events' arguments
# for event in ['change', 'complete', 'uptodate', 'error']
#   sync.on(event, ->
#     console.log(event, arguments)
#   )

# window.db = local
# export default EmberPouch.Adapter.extend({ db: local })

export default DS.RESTAdapter.extend(
  coalesceFindRequests: true
  namespace: ''
  # this is dependent on production/development environment
  # It is configured in config/environment.js
  # host: ClientENV.hostUrl
  # add IP from $DOCKER_HOST if --docker flag is set
  # host: 'http://192.168.59.103:1337'
)