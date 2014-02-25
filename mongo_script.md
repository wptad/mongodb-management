#Mongo Script

## Import & export databse

* Import

```
mongoexport -d dbname -c collectionName /tmp/db.dat 
mongoimport -d dbname -c collectionName /tmp/db.dat 
```


##Run js script 

```
mongo localhost:27017/pub_slot_stats mongo-pub_slot_stats-20130620-175142.js 

```