
#Install


```

apt-key adv --keyserver keyserver.ubuntu.com --recv-key 505A7412
echo "deb [arch=amd64] http://s3.amazonaws.com/tokumx-debs wheezy main" |  tee /etc/apt/sources.list.d/tokumx.list
apt-get update
apt-get install tokumx

```


./all4Server.sh  "chown -Rh tokumx:tokumx /var/log/mongodb"

./all4Server.sh  "mkdir /hdd1/shard ; chown -Rh tokumx:tokumx /hdd1/shard"



* finished script

```

Adding user `tokumx' to group `tokumx' 

Edit /etc/tokumx.conf as needed.
TokuMX can be run with service:
  service tokumx start
  service tokumx stop

Please note that TokuMX will not run with transparent huge pages enabled.
To disable them manually, run (as root)
  echo never > /sys/kernel/mm/transparent_hugepage/enabled
or to use sudo, you can run
  echo never | sudo tee /sys/kernel/mm/transparent_hugepage/enabled

This will be done for you automatically by the initscripts.

```