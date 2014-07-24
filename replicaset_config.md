## replicaSet config

```
rs.initiate()
rs.conf()
rs.add("srv1-11:1301")
rs.add("srv1-12:1301")


```



## force change primary

```
cfg = rs.conf()
cfg.members[0].priority = 0.5
cfg.members[1].priority = 0.5
cfg.members[2].priority = 1
rs.reconfig(cfg)

```


* <http://docs.mongodb.org/manual/tutorial/force-member-to-be-primary/>

