#!/bin/bash

SHARD_SIZE=12

for (( i=1; i<= SHARD_SIZE; i++ )) 
do

echo ">> process mongod-shard-${i}.conf" 

	cat > /etc/mongod-shard-${i}.conf <<-EOF
	# mongodb shard-${i}.conf file, generated by yoo mongdb tools.
	storage:
	    dbPath: "/hdd${i}/shard"
	    engine: "wiredTiger"
	    journal:
	        enabled: true
	    wiredTiger:
	        engineConfig:
	            cacheSizeGB: 16
	systemLog:
	    destination: file
	    path: "/var/log/mongodb/mongod-shard-${i}.log"
	    logAppend: true
	net:
	    bindIp: 0.0.0.0
	    port: $((i+1200))
	    unixDomainSocket:
	        enabled: true
	sharding:
	    clusterRole: "shardsvr"
	EOF

done;
