#tips

## check doc exists using find().limit(1)

<https://blog.serverdensity.com/checking-if-a-document-exists-mongodb-slow-findone-vs-find/>

However, it is significantly faster to use `find() + limit()` because `findOne()` will always `read + return the document` if it exists. `find() `just returns a cursor (or not) and only reads the data if you iterate through the cursor.

So instead of:

```
db.collection.findOne({_id: "myId"}, {_id: 1})
```

you should use:

```
db.collection.find({_id: "myId"}, {_id: 1}).limit(1)
```