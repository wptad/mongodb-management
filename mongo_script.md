#Mongo Script

## Import & export databse

### Import


Mongodb中的mongoimport工具可以把一个特定格式文件中的内容导入到指定的collection中。该工具可以导入JSON格式数据，也可以导入CSV格式数据。具体使用如下所示：

```

参数说明：
-h:指明数据库宿主机的IP
-u:指明数据库的用户名
-p:指明数据库的密码
-d:指明数据库的名字
-c:指明collection的名字
-f:指明要导入那些列
-type:指明要导入的文件格式
-headerline:指明第一行是列名，不需要导入
-file：指明要导入的文件

```

* example 

```
mongoimport -d test -c students --type csv --headerline --file students_csv.dat   
```

### mongoexport

Mongodb中的mongoexport工具可以把一个collection导出成JSON格式或CSV格式的文件。可以通过参数指定导出的数据项，也可以根据指定的条件导出数据。mongoexport具体用法如下所示：


```
参数说明：
-h:指明数据库宿主机的IP
-u:指明数据库的用户名
-p:指明数据库的密码
-d:指明数据库的名字
-c:指明collection的名字
-f:指明要导出那些列
-o:指明到要导出的文件名
-q:指明导出数据的过滤条件
-csv：指明要导出为csv格式
-f：指明需要导出classid、name、age这3列的数据

```

* example

```
mongoexport -d test -c students -o students.dat 
mongoexport -d test -c students --csv -f classid,name,age -o students_csv.dat  
```

* reference <http://chenzhou123520.iteye.com/blog/1641319>

##Run js script 

```
mongo localhost:27017/pub_slot_stats mongo-pub_slot_stats-20130620-175142.js 

```