import DS from 'ember-data'

# Presumably based on these answers: http://stackoverflow.com/questions/12168570/how-to-represent-arrays-within-ember-data-models
# All we need to do is always make sure an array is returned from serialize or deserialize

toArray = (data) ->
  switch Em.typeOf(data)
    when 'array'  then data
    when 'string' then JSON.parse(data)
    else []

export default DS.Transform.extend(
  deserialize: toArray
  serialize: toArray
)