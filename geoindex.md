## geoIndex


* <http://www.cnblogs.com/xinghebuluo/archive/2012/01/18/2308753.html>
* <http://blog.nosqlfan.com/html/1811.html>
* <http://blog.csdn.net/huangrunqing/article/details/9112227>
* 

## 坐标拾取系统

* <http://api.map.baidu.com/lbsapi/getpoint/index.html>


## mongodb Geo Index


### 2d


* ensureIndex

```
db.mapinfo.ensureIndex({"loc" : "2d"},{"background" : true})
db.mapinfo.ensureIndex({"loc" : "2d","category" : 1})                                                        
db.mapinfo.ensureIndex({ loc : "2d" } , { min : -500 , max : 500 } )  


```


* Query by $near

```

db.mapinfo.find({loc : {$geoNear : [72,82]},"category" : "coffee"})
db.mapinfo.find({"loc" : {"$geoNear" : [50,50]},"category" : "shop"}).limit(5)
db.mapinfo.find({"loc" : {"$geoNear" : [50,50], "$maxDistance" : 37},"category" : "shop"})
db.mapinfo.find({"loc" : {"$geoWithin" : {"$center" : [center,radius]}}})
db.mapinfo.find({"loc" : {"$geoWithin" : {"$box" : box}}})

```

## 2d 