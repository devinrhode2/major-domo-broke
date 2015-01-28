### global EmberPouch, PouchDB ###

# Debug output options: http://pouchdb.com/api.html#debug_mode
PouchDB.debug.enable('*')

db     = new PouchDB('local_couch')
remote = new PouchDB
  name: 'http://major-domo.iriscouch.com:5984/first_db'
  ajax: {
    timeout: 6 * 1000
  }

# Log all db events
for event in ['change', 'complete', 'uptodate', 'error', 'denied']
  db.on event, (args...) ->
    console.log 'Pouch ' + event + '\'d', args...

db.sync(remote, {live: true})
  .on 'error', (err) ->
    # Fail:
    db.cancel()
    throw new Error('PouchDB error:' + err)

export default EmberPouch.Adapter.extend
  db: db

###
export default DS.RESTAdapter.extend
  coalesceFindRequests: true
  namespace: ''
###