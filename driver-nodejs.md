# driver-nodejs


## replica set with mongoskin

```
var mongoskin = require('mongoskin'),
	db = null;

exports.getCollection = function (collectionName) {
	if (!db) {
		db = mongoskin.db("mongodb://server1:1301,server2:1301,server3:1301/tadTest?readPreference=secondaryPreferred",
			{numberOfRetries: 1, retryMiliSeconds: 500, safe: true, native_parser: true},
			{socketOptions: {timeout: 5000}});
	}
	return db.collection(collectionName);
}

```


* test

```

setInterval(function(){
	exports.getCollection('aaaa').insert({date: new Date()}, function(){
	});
}, 10)

setInterval(function(){
	exports.getCollection('aaaa').findOne({date: new Date()}, function(err, result){
		if(err){
			console.log(err, result);
		}
	});
}, 10)

```


## replica set with native driver

* <http://mongodb.github.io/node-mongodb-native/driver-articles/mongoclient.html#the-url-connection-format>