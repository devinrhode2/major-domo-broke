import Em from 'ember'
import DS from 'ember-data'

###
Presumably based on these answers: stackoverflow.com/questions/
/12168570/how-to-represent-arrays-within-ember-data-models
All we need to do is always make sure an array
is returned from serialize or deserialize

Even though this is an array of dates, and I could parse/format the dates here,
I'd rather not for performance reasons..
though if I need to parse/format all of them
it might actually be most performant to do so here.

I would need to parse/format all of them if the dates were unsorted,
or order wasn't guaranteed. I think I can guarantee order with hapi/etc
###

toArray = (data) ->
  switch Em.typeOf(data)
    when 'array'  then data
    when 'string' then JSON.parse(data)
    else []

export default DS.Transform.extend
  deserialize: toArray
  serialize: toArray