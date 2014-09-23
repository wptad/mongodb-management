# api

## setOnInsert

```
db.collection.update(
   <query>,
   { $setOnInsert: { <field1>: <value1>, ... } },
   { upsert: true }
)

```

* <http://docs.mongodb.org/manual/reference/operator/update/setOnInsert/>


## rename the key

```
db.students.update( { _id: 1 }, { $rename: { "nmae": "name" } } )
db.students.update( { _id: 1 }, { $rename: { "name.first": "name.fname" } } )

```


## collection

* <http://mongodb.github.io/node-mongodb-native/api-generated/collection.html>

## cursor

* <http://mongodb.github.io/node-mongodb-native/api-generated/cursor.html>


## mapReduce

* <http://docs.mongodb.org/manual/reference/method/db.collection.mapReduce/#mapreduce-out-mtd>
* <http://docs.mongodb.org/manual/reference/command/mapReduce/#mapreduce-out-cmd>
*　<http://no-fucking-idea.com/blog/2012/04/01/using-map-reduce-with-mongodb/>
* <http://docs.mongodb.org/manual/core/map-reduce/>