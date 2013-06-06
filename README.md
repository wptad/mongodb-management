
#Sharding


> mongodb sharding 


##Configure

### config
sharding_config.conf

```
configsvr = true
dbpath=/etc/mongodb/config_db
logpath=/var/log/mongodb/mongodb_config.log
logappend=true
port = 9211
```

* sharding_route.conf


```
logpath = /var/log/mongodb/mongodb_route_1.log
logappend = true
configdb = 127.0.0.1:9211
port = 9200
```

* sharding_1.conf

```
shardsvr = true
dbpath=/hdd1/mongodb_shard
logpath=/var/log/mongodb/mongodb_shard_1.log
logappend=true
port = 9201
# tuning configuration
objcheck = false
journal = false
nojournal = true
nohttpinterface = true
```



## Balancer

* balancer status

```
sh.getBalancerState()
```

* start balancer

```
sh.startBalancer()
```

* stop balancer

```
sh.stopBalancer()
```

##Add Shard Server

```
db.runCommand({ addshard:"localhost:9201" })
￼{ "shardAdded" : "shard0000", "ok" : 1 }
> db.runCommand({ addshard:"localhost:9202" })
{ "shardAdded" : "shard0001", "ok" : 1 }
> db.runCommand({ enablesharding:"test" })
{ "ok" : 1 }
> db.runCommand({ shardcollection: "test.main", key: { _id:1 }}) --设置分片的集合名称,且必 须指定 Shard Key,系统会自动创建索引
{ "collectionsharded" : "test.users", "ok" : 1 }

```

##Check Shard stats

```
> use test
switched to db test 
> db.users_2.stats()
```

##remove sharding

```
db.runCommand({"removeshard" : "localhost:9203"});
``` 



##ulimit 

Reference: <http://docs.mongodb.org/manual/reference/ulimit/>