## FAQ

## OUT OF MEMORY

* <http://stackoverflow.com/questions/21348847/mongodb-out-of-memory>

## gotShardName different

```
[Balancer] moveChunk result: { errmsg: "exception: gotShardName different than what i had before  before [shard0000]  got [shard0002] ", code: 13298, ok: 0.0 }


shard0002的机器以前是shard0000，后来删除后再加进来就变成0002，导致直接找不到数据，在config数据库中也没有看到相关的0000数据，google，得知shard0000的信息其实在shard本机上其实也是有缓存的，然后重启机器，问题解决。


注意：在增加shard的时候使用手动指定shardname：db.runCommand({addShard:'xxxx',name:'xxxx'})

```