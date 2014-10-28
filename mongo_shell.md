# mongo shell

* run with javascript

```
#!/bin/sh
mongo WordPress --eval "show collections;db.posts.find().limit(10);"

```


## insert without _id

```
db.createCollection("noautoid", { autoIndexId: false })
```



## FAQ

````

Failed global initialization: BadValue Invalid or no user locale set. Please ensure LANG and/or LC_* environment variables are set correctly.
```

FIX METHOD:

```
export LC_ALL=C

```