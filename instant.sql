# Host: 127.0.0.1  (Version 5.7.17-log)
# Date: 2018-04-25 11:26:43
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "admin_user"
#

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `username` varchar(20) DEFAULT NULL,
  `passwd` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "admin_user"
#

INSERT INTO `admin_user` VALUES ('admin','admin');

#
# Structure for table "book"
#

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bookid` int(11) DEFAULT NULL,
  `bookname` varchar(20) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "book"
#

INSERT INTO `book` VALUES (1,'Java讲义',79.00,'李刚',NULL,'疯狂教育出品'),(2,'相机',500.00,'张三','video.jpg','2015年入手二手索尼'),(4,'TP-LINK TL-WR842N',50.00,NULL,'18_dtl_lyq.jpg','\"极路由（HiWiFi） HC5761 极贰AC双频智能无线路由器'),(24,'金贝壳巧克力',70.00,NULL,'iofwelq932.jpg','比利时进口 Guylian吉利莲 金贝壳巧克力礼盒250g'),(18,'Docker进阶与实战',68.25,NULL,'4362t5fewaf.jpg','Docker进阶与实战'),(3,'东芝U盘64G USB3.0',198.00,NULL,'80_QMvEjQAAexB002.jpg','东芝（TOSHIBA） Osumi EX2 64GB USB3.0 U盘'),(5,'云南勐海古树普洱茶',187.50,NULL,'569a046bN74da4012.jpg','梓瑞 云南勐海古树普洱茶 班章系列古树茶叶生/熟 班章1号/357克'),(6,'安溪铁观音',99.80,NULL,'kdosa9320js.jpg','安溪铁观音茶叶浓香型兰花香乌龙茶礼盒装 255g'),(7,'小细腰荷叶茶',68.00,NULL,'32r43wqf32q.jpg','简品 小细腰荷叶茶 天然荷叶袋泡茶 100g*2礼盒'),(8,'武夷山大红袍',99.00,NULL,'43rfweaf.jpg','天福茗茶 天曦武夷山大红袍乌龙茶叶礼盒装100g*4罐'),(9,'洞庭碧螺春',88.30,NULL,'vsae3wf3.jpg','春满壶 绿茶 洞庭碧螺春 60g/罐合计240g 谷雨前碧螺春'),(10,'西湖龙井绿茶',166.00,NULL,'dsafea32r3q.jpg','明前西湖龙井绿茶 口碑茶250g/罐'),(11,'干红葡萄酒',139.00,NULL,'ewqf32r3ajyu.jpg','长城特酿3年解百纳干红葡萄酒 整箱装 750ml*6瓶'),(13,'张裕优选级干红葡萄酒750ml*6瓶',298.00,NULL,'vsaf435875g.jpg','张裕优选级干红葡萄酒750ml*6瓶'),(15,'韩国所望SOMANG牛奶身体乳500ml',69.00,NULL,'mjytkuyt767.jpg','韩国所望SOMANG牛奶身体乳500ml');

#
# Structure for table "common_user"
#

DROP TABLE IF EXISTS `common_user`;
CREATE TABLE `common_user` (
  `username` varchar(20) DEFAULT NULL,
  `passwd` varchar(18) DEFAULT NULL,
  `telphone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `id` int(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "common_user"
#

INSERT INTO `common_user` VALUES ('user','user',NULL,NULL,5),('gzx','gzx',NULL,NULL,1);

#
# Structure for table "t_article"
#

DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `id` varchar(100) DEFAULT NULL,
  `header` varchar(100) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `content` text,
  `author` varchar(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_published` int(1) DEFAULT NULL,
  `is_delete` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(100) NOT NULL,
  `category_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_article"
#

INSERT INTO `t_article` VALUES ('2145ed72-164a-401c-af29-248625a775b8','Java Web实用技术','如何将MyEclipse项目导入eclipse','我们经常会在网上下载一些开源项目，或者从别的地方迁移一些项目进来，但经常会发现导入后各种报错。这是初学java肯定会遇到的问题，本文对一些常见的处理方案做一个总结。（本文将MyEclipse项目导入eclipse的过程为例，其他情况也可参考这个流程）','Jack','解决项目导入的冲突问题...',1,0,'2016-10-19 10:43:10','2016-10-19 10:43:10','319600c3-550a-4f9f-80cf-deebe2376528',2),('6e0173a2-d288-47c1-a54d-149d922a6f1d','Java Web实用技术','JDK安装','JDK安装','Jack','JDK安装和环境变量配置',1,0,'2016-10-19 10:43:10','2016-10-19 10:43:10','319600c3-550a-4f9f-80cf-deebe2376528',2),('ddc0136f-7bf5-41ed-ba6f-462d370afbe4','Java Web实用技术','tomcat安装','tomcat安装','Jack','tomcat安装和环境变量配置',1,0,'2016-10-19 10:43:10','2016-10-19 16:20:57','319600c3-550a-4f9f-80cf-deebe2376528',2),('2b30da44-ad19-4c95-8396-018d79dac634','Java Web实用技术','maven安装','maven安装','Jack','maven安装和环境变量配置',1,0,'2016-10-19 10:43:10','2016-10-19 16:21:20','319600c3-550a-4f9f-80cf-deebe2376528',2),('b7c19c52-692c-4d24-9b8c-7a022e0ab9fb','Java Web实用技术','SpringMVC入门教程','SpringMVC入门教程','Jack','SpringMVC入门教程',1,0,'2016-10-19 10:43:10','2016-10-19 16:21:47','319600c3-550a-4f9f-80cf-deebe2376528',2),('fb6b70ea-4023-45a3-9106-561649803805','Java Web实用技术','JavaScript闭包详解','<p>本文面向初学者，大神轻喷。</p>\r\n<ul>\r\n<li>闭包是什么？</li>\r\n</ul>\r\n<p>初学javascript的人，都会接触到一个东西叫做闭包，听起来感觉很高大上的。网上也有各种五花八门的解释，其实我个人感觉，没必要用太理论化的观念来看待闭包。</p>\r\n<p>事实上，你每天都在用闭包，只是你不知道罢了。</p>\r\n<p>比如：</p>\r\n<pre><code>var cheese = \'奶酪\';\r\n\r\nvar test = function(){\r\n    alert(cheese);\r\n}</code></pre>\r\n<p>OK，你已经写了一个闭包。</p>\r\n<ul>\r\n<li>函数也是一个数据类型</li>\r\n</ul>\r\n<p>变量 cheese 是在全局作用域中的一个变量，当你创建了一个 test 函数，那么，test 和 cheese 就共享一个全局作用域。</p>\r\n<p>你要额外明白的一点是，在js中，函数和变量本质上是一个东西。函数也是一个数据类型。</p>\r\n<p>从上面的定义中也能看出来这一点。你要是不相信的话，我们来看一下咯。</p>\r\n<pre><code>alert(cheese);\r\nalert(test);</code></pre>\r\n<div class=\"image-package\">\r\n<img src=\"http://upload-images.jianshu.io/upload_images/1929342-3fbe27413adf61bc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240\" data-original-src=\"http://upload-images.jianshu.io/upload_images/1929342-3fbe27413adf61bc.png?imageMogr2/auto-orient/strip%7CimageView2/2\"><br><div class=\"image-caption\">Paste_Image.png</div>\r\n</div>\r\n<div class=\"image-package\">\r\n<img src=\"http://upload-images.jianshu.io/upload_images/1929342-4f6cfd13d16dc9be.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240\" data-original-src=\"http://upload-images.jianshu.io/upload_images/1929342-4f6cfd13d16dc9be.png?imageMogr2/auto-orient/strip%7CimageView2/2\"><br><div class=\"image-caption\">Paste_Image.png</div>\r\n</div>\r\n<p>让我们再来看看 test 和 cheese各是什么类型：</p>\r\n<pre><code>alert(typeof test);</code></pre>\r\n<div class=\"image-package\">\r\n<img src=\"http://upload-images.jianshu.io/upload_images/1929342-b19f84fb7789ec1e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240\" data-original-src=\"http://upload-images.jianshu.io/upload_images/1929342-b19f84fb7789ec1e.png?imageMogr2/auto-orient/strip%7CimageView2/2\"><br><div class=\"image-caption\">Paste_Image.png</div>\r\n</div>\r\n<pre><code>alert(typeof cheese);</code></pre>\r\n<div class=\"image-package\">\r\n<img src=\"http://upload-images.jianshu.io/upload_images/1929342-decbdf6154eb04a5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240\" data-original-src=\"http://upload-images.jianshu.io/upload_images/1929342-decbdf6154eb04a5.png?imageMogr2/auto-orient/strip%7CimageView2/2\"><br><div class=\"image-caption\">Paste_Image.png</div>\r\n</div>\r\n<p>看到了吧，只是类型不同而已，他们都是数据类型。</p>\r\n<p>唯一的不同点就是，函数类型的 test 可以拥有自己内部逻辑，而string类型的 cheese 只能存放一个字面值，这就是区别，仅此而已。</p>\r\n<p>一目了然了，唯一不同的就是普通变量是字面值一样的存在，而函数需要打个括号才能执行而已。</p>\r\n<p>你看，我现在打一个括号：</p>\r\n<pre><code>test();</code></pre>\r\n<div class=\"image-package\">\r\n<img src=\"http://upload-images.jianshu.io/upload_images/1929342-f5d01aa7b5738535.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240\" data-original-src=\"http://upload-images.jianshu.io/upload_images/1929342-f5d01aa7b5738535.png?imageMogr2/auto-orient/strip%7CimageView2/2\"><br><div class=\"image-caption\">Paste_Image.png</div>\r\n</div>\r\n<p>打了括号，才会执行函数里面的逻辑。</p>\r\n<ul>\r\n<li>作用域</li>\r\n</ul>\r\n<p>让我们回到闭包，现在将之前的代码做一个小小的变动：</p>\r\n<pre><code>var cheese = \'奶酪\';\r\nvar test = function(){\r\n    alert(cheese);\r\n}\r\n\r\nfunction test2(){\r\n    var cheese = null;\r\n    test();\r\n}\r\n\r\ntest2();</code></pre>\r\n<p>那么，你觉得现在 alert 出来的是 null 还是奶酪呢？</p>\r\n<p>思考一下。。。</p>\r\n<p>对的，弹出来的还是奶酪。</p>\r\n<div class=\"image-package\">\r\n<img src=\"http://upload-images.jianshu.io/upload_images/1929342-69f79a1a85308fe3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240\" data-original-src=\"http://upload-images.jianshu.io/upload_images/1929342-69f79a1a85308fe3.png?imageMogr2/auto-orient/strip%7CimageView2/2\"><br><div class=\"image-caption\">Paste_Image.png</div>\r\n</div>\r\n<p>之前已经说过了，函数 test 和 变量 cheese 同处于一片蓝天下 -- 同一个作用域。</p>\r\n<p>函数 test 和 变量 cheese 共同享有的作用域叫做全局作用域，就好像地球一样，我们所有的人都享有这个地球，能够在这里呼吸，吃饭，玩耍。</p>\r\n<p>对test而言，他能访问到的作用域只有它本身的闭包和全局作用域：</p>\r\n<div class=\"image-package\">\r\n<img src=\"http://upload-images.jianshu.io/upload_images/1929342-912e5e41a0594e82.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240\" data-original-src=\"http://upload-images.jianshu.io/upload_images/1929342-912e5e41a0594e82.png?imageMogr2/auto-orient/strip%7CimageView2/2\"><br><div class=\"image-caption\">Paste_Image.png</div>\r\n</div>\r\n<p>也就是说，正常情况下他访问不到其他闭包里的内容，在 test2 里面定义的变量跟它没有半毛钱关系，所以弹出来的 cheese 依旧是全局作用域里的 cheese。</p>\r\n<p>函数可以创造自己的作用域。</p>\r\n<p>我们刚才定义了一个 test 函数，{ } 包裹起来的部分就形成了一个新的作用域，也就是所谓的闭包。</p>\r\n<p>其实你深刻了解了作用域的原理后，闭包也就理解了。</p>\r\n<p>就好比地球是一个全局作用域，你自己家的房子是一个函数，你的房子是私人空间，就是一个局部作用域，也就是你自己建了一个闭包！</p>\r\n<p>你透过窗户可以看见外边的景色，比如院子里的一棵芭蕉树，你于是通过眼镜观察看到了芭蕉树的颜色，高度，枝干的粗细等等。</p>\r\n<p>这一棵芭蕉树相当于一个全局变量，你在自己的闭包内可以访问到它的数据。</p>\r\n<p>所以，在这个例子中，test 就是一个房子，在里面可以通过窗户访问到全局作用域中的奶酪 —— 变量 cheese。</p>\r\n<p>也就是说，cheese 在被 test 访问到的时候，就进入了它的闭包。</p>\r\n<p>这样解释，你是否觉得好理解一点呢？</p>\r\n<p>现在你是否可以理解一开始我说，闭包这东西其实我们天天都在用的意思了呢？</p>\r\n<p>我们给出闭包的第一个注解：</p>\r\n<h4>1. 闭包就是在函数被创建的时候，存在的一个私有作用域，并且能够访问所有的父级作用域。</h4>\r\n<p>回到刚才的例子：</p>\r\n<pre><code>var cheese = \'奶酪\';\r\nvar test = function(){\r\n    alert(cheese);\r\n}\r\n\r\nfunction test2(){\r\n    var cheese = null;\r\n    test();\r\n}</code></pre>\r\n<p>在这个例子中，test 和 test2 各自享有一个作用域，对不对？而且他们互相不能访问。比如，我在 test 中定义的一个变量，test2就无法直接访问。</p>\r\n<pre><code>var test = function(){\r\n    var i = 10;\r\n}\r\n\r\nfunction test2(){\r\n    alert(i);\r\n}\r\n\r\ntest2();</code></pre>\r\n<p>像这样，一旦执行 test2 函数，编译就不通过，因为在 test2的闭包内，根本找不到变量 i 。它首先会在自己的闭包内寻找 i，找不到的话就去父级作用域里找，这边的父级就是全局作用域，很遗憾，还是没有。这就是所谓的作用域链，它会一级一级往上找。如果找到最顶层，还是找不到的话，就会报错了。</p>\r\n<div class=\"image-package\">\r\n<img src=\"http://upload-images.jianshu.io/upload_images/1929342-7cdbd1569029a216.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240\" data-original-src=\"http://upload-images.jianshu.io/upload_images/1929342-7cdbd1569029a216.png?imageMogr2/auto-orient/strip%7CimageView2/2\"><br><div class=\"image-caption\">Paste_Image.png</div>\r\n</div>\r\n<p>在这里，还有一个需要注意的点就是：如果某一个闭包中对全局作用域（或父级作用域）中的变量进行了修改，那么任何引用该变量的闭包都会受到牵连。</p>\r\n<p>这的确是一个需要注意的地方。</p>\r\n<p>举个例子</p>\r\n<pre><code>var cheese = \'奶酪\';\r\n\r\nvar test = function(){\r\n    cheese = \'奶酪被偷吃了！\'\r\n}\r\n\r\nfunction test2(){\r\n    alert(cheese);\r\n}\r\ntest();\r\ntest2();</code></pre>\r\n<p>结果是：</p>\r\n<div class=\"image-package\">\r\n<img src=\"http://upload-images.jianshu.io/upload_images/1929342-63bf4a6ddac4b172.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240\" data-original-src=\"http://upload-images.jianshu.io/upload_images/1929342-63bf4a6ddac4b172.png?imageMogr2/auto-orient/strip%7CimageView2/2\"><br><div class=\"image-caption\">Paste_Image.png</div>\r\n</div>\r\n<p>很有趣，是不是呢？</p>\r\n<p>当我们在定义一个函数，就产生了一个闭包，如果这个函数里面又有若干的内部函数，就是闭包嵌套着闭包。</p>\r\n<p>像这样：</p>\r\n<pre><code>function house(){\r\n\r\n    var footBall = \'足球\';\r\n    /* 客厅 */\r\n    function livingRoom(){\r\n        var table = \'餐桌\';\r\n        var sofa = \'沙发\';\r\n        alert(footBall);\r\n    }\r\n\r\n    /* 卧室 */\r\n    function bedRoom(){\r\n        var bed = \'大床\';\r\n    }\r\n\r\n    livingRoom();\r\n}\r\n\r\nhouse();</code></pre>\r\n<p>函数house是一个闭包，里面又定义了两个函数，分别是livingRoom客厅，和bedRoom卧室，它们各自形成一个自己的闭包。对它们而言，父级作用域就是house。</p>\r\n<p>如果我们希望在客厅里踢足球，在livingRoom函数执行的时候，它会先在自己的闭包中找足球，如果没找到，就去house里面找。一层一层往上找，直至找到了为止。当然，这个例子可能不是很恰当。但起码展示了作用域，闭包之间的联系。</p>\r\n<p>再说明一下， 闭包就是在函数被创建的时候，存在的一个私有作用域，并且能够访问所有的父级作用域。因此，从理论上讲，任何函数都是一个闭包！</p>\r\n<p>本章结束 ...</p>\r\n<p>剽悍一小兔，电气自动化毕业。<br>参加工作后对计算机感兴趣，深知初学编程之艰辛。<br>希望将自己所学记录下来，给初学者一点帮助。</p>\r\n<p><strong>免责声明</strong>： 博客中所有的图片素材均来自百度搜索，仅供学习交流，如有问题请联系我，侵立删，谢谢。</p>','Jack','JavaScript闭包详解',1,0,'2016-10-19 10:43:10','2016-11-17 10:03:52','319600c3-550a-4f9f-80cf-deebe2376528',2);

#
# Structure for table "t_category"
#

DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "t_category"
#

INSERT INTO `t_category` VALUES (1,'连载小说'),(2,'编程代码类'),(3,'生活感悟');

#
# Structure for table "t_comment"
#

DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` varchar(100) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `content` varchar(600) DEFAULT NULL,
  `article_id` varchar(100) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_comment"
#

INSERT INTO `t_comment` VALUES ('3f8a4c60-006c-4173-b70a-a6bb7ffc45d0','319600c3-550a-4f9f-80cf-deebe2376528','很不错的文章，赞一个！','fb6b70ea-4023-45a3-9106-561649803805','2016-11-17 11:17:06','2016-11-17 11:17:07',0);

#
# Structure for table "t_user"
#

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(100) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `headerPic` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(1) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_user"
#

INSERT INTO `t_user` VALUES ('24cb5136-39cf-4109-a28b-d412efd6ad2d','zhaoliu','123456',NULL,NULL,'0','2016-10-05 00:00:00','2016-10-19 11:22:36',0,'保密','保密'),('319600c3-550a-4f9f-80cf-deebe2376528','zhangsan','123456',NULL,NULL,'0','2016-10-04 00:00:00','2016-10-19 11:22:40',0,'保密','保密'),('3fe31336-a792-488f-9445-f3ebd30f9de3','wangwu','123456',NULL,NULL,'0','2016-10-05 00:00:00','2016-10-19 11:22:45',0,'保密','保密'),('5830e229-06d5-463c-b17d-639977f7c60c','lisi','123456',NULL,NULL,'0','2016-10-05 00:00:00','2016-10-19 11:22:47',0,'保密','保密');
