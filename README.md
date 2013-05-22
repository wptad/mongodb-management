
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
db.runCommand({ addshard:"localhost:20000" })
￼{ "shardAdded" : "shard0000", "ok" : 1 }
> db.runCommand({ addshard:"localhost:20001" })
{ "shardAdded" : "shard0001", "ok" : 1 }
> db.runCommand({ enablesharding:"test" })
{ "ok" : 1 }
> db.runCommand({ shardcollection: "test.users", key: { _id:1 }}) --设置分片的集合名称,且必 须指定 Shard Key,系统会自动创建索引
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