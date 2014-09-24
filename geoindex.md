## geoIndex

* <http://docs.mongodb.org/manual/core/2dsphere/>
* <http://www.cnblogs.com/xinghebuluo/archive/2012/01/18/2308753.html>
* <http://blog.nosqlfan.com/html/1811.html>
* <http://blog.csdn.net/huangrunqing/article/details/9112227>
* <http://www.l99.com/EditText_view.action?textId=522445>

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

## convert

```
/**
 * 转换接口
 * @param float|array lat 百度坐标系的纬度、或者[lat, lng]
 * @param float lng 百度坐标系的经度
 * @return array 转换后的gcj02坐标(高德坐标系)。格式[lat, lng]
 */
exports.conv_bd09_to_gcj = function (lat, lng) {
	if (isArray(lat)) {
		lng = lat[1];
		lat = lat[0];
	}
	var x = lng - 0.0065;
	var y = lat - 0.006;
	var z = Math.sqrt(x * x + y * y) - 0.00002 * Math.sin(y * const_x_pi());
	var theta = Math.atan2(y, x) - 0.000003 * Math.cos(x * const_x_pi());

	return [z * Math.sin(theta), z * Math.cos(theta)];
}

```