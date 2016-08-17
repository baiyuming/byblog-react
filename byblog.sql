/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : byblog

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-07-22 16:42:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for by_album
-- ----------------------------
DROP TABLE IF EXISTS `by_album`;
CREATE TABLE `by_album` (
  `al_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '相册逻辑ID',
  `al_name` varchar(64) NOT NULL COMMENT '相册名字',
  `al_url` varchar(128) NOT NULL COMMENT '相册封面',
  `al_hit` int(11) NOT NULL DEFAULT '1' COMMENT '相册点击',
  `al_view` int(11) NOT NULL DEFAULT '1' COMMENT '相册视图',
  `al_star` int(11) NOT NULL DEFAULT '1' COMMENT '相册星级',
  `al_time` int(10) NOT NULL COMMENT '相册添加时间',
  PRIMARY KEY (`al_id`),
  KEY `al_name` (`al_name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='相册表';

-- ----------------------------
-- Records of by_album
-- ----------------------------
INSERT INTO `by_album` VALUES ('10', '大学', '/Upload/Album/1436573854.jpg', '1', '1', '5', '1436573854');
INSERT INTO `by_album` VALUES ('12', '我家coco', '/Upload/Album/1436933387.png', '1', '1', '5', '1436933387');

-- ----------------------------
-- Table structure for by_album_content
-- ----------------------------
DROP TABLE IF EXISTS `by_album_content`;
CREATE TABLE `by_album_content` (
  `al_id` int(11) NOT NULL DEFAULT '1' COMMENT '相册Id',
  `al_c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '相册评论逻辑Id',
  `al_c_time` int(10) NOT NULL COMMENT '相册评论时间',
  `al_c_ip` varchar(16) NOT NULL COMMENT '相册评论ip',
  `al_c_content` text NOT NULL COMMENT '相册评论内容',
  `al_c_name` varchar(32) NOT NULL COMMENT '相册评论作者',
  `al_c_img` text NOT NULL,
  `al_c_from` varchar(16) NOT NULL COMMENT '相册评论发表端',
  `al_c_email` varchar(32) NOT NULL COMMENT '相册评论邮箱',
  `al_c_url` varchar(32) NOT NULL COMMENT '相册评论域名',
  `al_c_uname` varchar(32) NOT NULL COMMENT '相册回复作者',
  `al_c_ucontent` text NOT NULL COMMENT '相册回复内容',
  `al_c_utime` int(10) DEFAULT NULL COMMENT '相册回复时间',
  PRIMARY KEY (`al_c_id`),
  KEY `al_id` (`al_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='相册评论表';

-- ----------------------------
-- Records of by_album_content
-- ----------------------------
INSERT INTO `by_album_content` VALUES ('12', '13', '1436964486', '117.21.165.138', '好狗啊\r\n', 'hfg sfr', '/Public/Img/Portrait/96.jpg', 'Win 7', '898877749@qq.com', 'http://yanl520.com', '隆航', '哈哈，谢谢。养只狗陪自己也挺不错的。', '1436972296');
INSERT INTO `by_album_content` VALUES ('12', '15', '1437642917', '116.30.168.27', '真可爱  啊', '手机真伪查询', '/Public/Img/Portrait/21.jpg', 'Win 8', '517945636@qq.com', 'http://www.58yiji.com/imei/searc', '隆航', '谢谢。是博美', '1437655138');
INSERT INTO `by_album_content` VALUES ('10', '10', '1436802984', '122.228.229.218', '未登陆QQ测试[em_18]', '未登陆QQ测试', '/Public/Img/Portrait/28.jpg', 'Win 8.1', '752136964@qq.com', '', '', '', null);
INSERT INTO `by_album_content` VALUES ('10', '12', '1436803225', '122.228.229.218', 'QQ登陆测试相册', '我是兴高采烈', 'http://qzapp.qlogo.cn/qzapp/101232670/7C8F797F30B08554A6E39A537F9A324B/50', 'Win 8.1', '752136964@qq.com', '', '', '', null);
INSERT INTO `by_album_content` VALUES ('12', '16', '1438670573', '114.216.168.210', 'xx', 'xx', '/Public/Img/Portrait/38.jpg', 'Win 10', 'xx@xx.com', 'http://www.xxx.cn', '', '', null);
INSERT INTO `by_album_content` VALUES ('12', '17', '1438780732', '111.177.90.106', '就几张啊', '一笺清浅入夏来', 'http://q.qlogo.cn/qqapp/101232670/4652A942951651A7F4192DC0BF5251E6/100', '魅族4', '752136964@qq.com', '', '隆航', '图片要经过处理，不然几兆的传下去别人打开也慢的。', '1438786603');

-- ----------------------------
-- Table structure for by_article
-- ----------------------------
DROP TABLE IF EXISTS `by_article`;
CREATE TABLE `by_article` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章逻辑ID',
  `a_url` varchar(64) DEFAULT '' COMMENT '文章图片',
  `a_title` varchar(128) NOT NULL COMMENT '文章标题',
  `a_remark` varchar(256) DEFAULT '' COMMENT '文章描述',
  `a_keyword` varchar(32) DEFAULT '' COMMENT '文章关键字',
  `pid` int(11) NOT NULL DEFAULT '1' COMMENT '文章类别',
  `a_time` int(10) NOT NULL COMMENT '文章发表时间',
  `a_content` text NOT NULL COMMENT '文章内容',
  `a_view` int(11) NOT NULL DEFAULT '1' COMMENT '文章是否置顶',
  `a_hit` int(11) NOT NULL DEFAULT '1' COMMENT '文章点击量',
  `a_original` int(1) DEFAULT '0',
  `a_from` varchar(16) NOT NULL DEFAULT '1',
  `a_writer` varchar(64) NOT NULL COMMENT '作者',
  `a_ip` varchar(16) NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `a_title` (`a_title`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of by_article
-- ----------------------------
INSERT INTO `by_article` VALUES ('45', '/Upload/Thumb/1437293742.jpg', '后台模板源文件下载', '开源项目中的后台模板源文件大家如果有兴趣可以自己下载修改。我的后台就是这套源码修改的。', '后台', '4', '1437350485', '<ul class=\" list-paddingleft-2\" style=\"list-style-type: square;\"><li><p><strong>模板来源：</strong>&nbsp;互联网<br/></p></li><li><p><strong>程序大小：</strong>&nbsp;5.86MB</p></li><li><p><strong>下载地址：</strong>&nbsp;<a target=\"_blank\" href=\"http://pan.baidu.com/s/1eQ6N5J0\">百度云盘</a>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br/></p></li><li><p><strong>文件编码：</strong>UTF-8/HTML</p></li><li><p><strong>源码版本：</strong>bootstrap2<br/></p></li><li><p><strong>测试地址：</strong><span class=\"bgcolor3\">本网站源码后台</span></p></li><li><p><strong>更新时间：</strong>&nbsp;2015年07月17日 08:08</p></li></ul><hr/><p>效果图：<br/></p><p>后台效果图：<img alt=\"火狐截图_2015-07-17T00-01-02.944Z.png\" src=\"/Upload/20150717/1437091723553800.png\" title=\"1437091723553800.png\"/></p>', '2', '185', '0', 'Win 8.1', '隆航', '122.228.229.218');
INSERT INTO `by_article` VALUES ('46', '/Upload/Thumb/1437298204.jpg', '米4按键坏了后的对策', '上次说了手机按键坏了很不爽，这次来说下米4按键坏了后的对策', '按键', '2', '1437298204', '<p>百度了很多方案，最有效的一个自己测试了贴出来，也算自己总结点东西在博客里面。</p><p>记得在很早之前使用 <span style=\"color: rgb(255, 0, 0);\">HUAWEI8060</span> 的时候我弄过手机程序代码，那时候电源键打开屏幕时间久了电源键就凹进去了，我改成音量键唤醒屏幕了的。为了手机，我也是蛮拼的。</p><p>首先应为手机下面的按键坏了，所以操作的时候需要特别小心，稍不注意就需要重启手机才能操作</p><p>第一步，安装 ‘<span style=\"color: rgb(255, 0, 0);\">虚拟按键大师</span>’，这个在应用商店就可以找到。安装后就可以像IOS那样一个小圈圈的去操作。如果你觉得这就解决了，那么你就太不懂摩羯的性子了。</p><p>第二步，方便操作之后，因为‘<span style=\"color: rgb(255, 0, 0);\">RE文件管理器</span>’在小米应用商店的那个是没得啥用的。所以记得先安装‘<span style=\"color: rgb(255, 0, 0);\">豌豆荚</span>’，然后再进行第三部操作，切记，否则你安装的‘RE文件管理器’无法编辑</p><p><img src=\"/Upload/20150719/1437297830209881.png\" title=\"1437297830209881.png\" alt=\"Screenshot_2015-07-19-17-19-51.png\"/></p><p>第三步，在手机自带的安全中心中给予这个程序ROOT权限</p><p><img src=\"/Upload/20150719/1437297853117990.png\" title=\"1437297853117990.png\" alt=\"Screenshot_2015-07-19-17-20-03.png\"/></p><p>第四步，打开 <span style=\"color: rgb(255, 0, 0);\">/system </span>目录下的 <span style=\"color: rgb(255, 0, 0);\">Build.prop</span> 文件，这里需要注意先点击右上角的 <span style=\"color: rgb(255, 0, 0);\">挂在为可读写</span> 然后在这个文件上长按，以&nbsp;<span style=\"color: rgb(255, 0, 0);\">记事本打开编辑</span>。在最下面添加如下代码</p><pre class=\"brush:php;toolbar:false\">qemu.hw.mainkeys=0</pre><p><img src=\"/Upload/20150719/1437298380122928.png\" title=\"1437298380122928.png\" alt=\"Screenshot_2015-07-19-17-20-42.png\"/></p><p>然后右上角 保存并退出。<br/></p><p>第五步，重启</p><p>好了，以上就是修改的过程。总的来说学习很多东西。</p>', '2', '142', '0', 'Win 8.1', '隆航', '122.228.229.218');
INSERT INTO `by_article` VALUES ('47', '/Upload/Thumb/1437437174.jpg', 'ThinkPHP在博客中添加搜索', '根据网友的建议，把搜索功能放在前面写。现在来写下ThinkPHP在博客中添加搜索功能', '搜索', '4', '1437437174', '<p style=\"line-height: 1.75em;\">在博客中添加功能第一个要考虑的就是先添加页面。</p><p style=\"line-height: 1.75em;\"><img alt=\"QQ截图20150721080512.png\" src=\"/Upload/20150721/1437436925112674.png\" title=\"1437436925112674.png\"/></p><p style=\"line-height: 1.75em;\">如果大家不满意这个简单的样式，可以自行修改。废话不多说，附加上代码</p><p style=\"line-height: 1.75em;\">在需要添加搜索功能的地方写上HTML代码：<br/></p><pre class=\"brush:html;toolbar:false\"><p style=\"line-height: 1.75em;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;col-lg-12 search-box&quot;&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;input-group search-input&quot;&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;form action=&quot;{:U(&#39;Class/search&#39;)}&quot; method=&quot;get&quot;&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;input type=&quot;text&quot; class=&quot;form-control&quot; placeholder=&quot;请输入关键词&quot; name=&quot;key&quot;&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;span class=&quot;input-group-btn&quot;&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;button class=&quot;btn btn-default&quot; type=&quot;submit&quot;&gt;搜索&lt;/button&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/span&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/form&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;</p></pre><p style=\"line-height: 1.75em;\">在CSS样式中添加：</p><pre><p style=\"line-height: 1.75em;\">/*搜索*/<br/>.search-box{margin-bottom: 30px;}<br/>.search-input{width: 80%;}<br/></p></pre><p style=\"line-height: 1.75em;\">然后添加控制器和方法，由于时间关系我还没有添加正则分页</p><p style=\"line-height: 1.75em;\">请把如下方法添加到 App/Home/Controller/ClassController.class.php</p><pre class=\"brush:php;toolbar:false\"><p style=\"line-height: 1.75em;\">&nbsp;&nbsp;&nbsp; public function search($key=&#39;&#39;){&nbsp;&nbsp; &nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // 分页列表<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $key = I(&#39;get.key&#39;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $map[&#39;a_title&#39;]=array(&#39;like&#39;,&quot;%$key%&quot;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $map[&#39;a_view&#39;]=array(&#39;gt&#39;,&#39;0&#39;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $count = M(&#39;article&#39;)-&gt;where($map)-&gt;count();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Page&nbsp; = new \\Think\\PageHome($count,5);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Page-&gt;url = &#39;class-&#39;.$id.&#39;/page&#39;;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach($map as $key=&gt;$val) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $Page-&gt;parameter[$key]&nbsp;&nbsp; =&nbsp;&nbsp; urlencode($val);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $show&nbsp; = $Page-&gt;show();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $article = M(&#39;article&#39;)-&gt;where($map)-&gt;order(&#39;a_time desc&#39;)-&gt;join(&#39;web_tag ON web_tag.pid = web_article.pid&#39;)-&gt;limit($Page-&gt;firstRow.&#39;,&#39;.$Page-&gt;listRows)-&gt;select();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this-&gt;assign(&#39;article&#39;,$article);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this-&gt;assign(&#39;page&#39;,$show);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var_dump($article);die;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this-&gt;display();<br/>&nbsp;&nbsp;&nbsp; }</p></pre><p style=\"line-height: 1.75em;\">然后，可以去测试了。</p><p style=\"line-height: 1.75em;\">如果在使用中碰到问题，或者自己添加有难度，可以在群里讨论或者等我下个版本的开源哦。</p>', '2', '114', '0', 'Win 8.1', '隆航', '122.228.229.216');
INSERT INTO `by_article` VALUES ('48', '/Upload/Thumb/1437471424.jpg', '青春博客1.7详细使用说明', '开源程序已经一个多星期了，这里说下青春博客1.7详细使用说明', '手册', '4', '1437471424', '<p style=\"line-height: 1.75em;\">很多对程序不太懂的朋友可能有点帮助，会PHP的朋友就可以跳过了。</p><p style=\"line-height: 1.75em;\">首先下载程序，下载地址</p><p style=\"line-height: 1.75em;\"><a target=\"_blank\" href=\"http://loveteemo.com/article-47.html\"></a><a target=\"_blank\" href=\"http://loveteemo.com/article-47.html\"><img alt=\"QQ图片20150721173754.png\" src=\"/Upload/20150721/1437471400305913.png\" title=\"1437471400305913.png\"/></a></p><p style=\"line-height: 1.75em;\">然后下载环境配置文件wamp，一路点击确定安装：</p><p style=\"line-height: 1.75em;\">下载地址：64位 <a href=\"http://pan.baidu.com/s/1bnvxA5T\">http://pan.baidu.com/s/1bnvxA5T</a></p><hr/><p style=\"line-height: 1.75em;\">下载地址：32位 <a href=\"http://pan.baidu.com/s/1jGoxFDk\">http://pan.baidu.com/s/1jGoxFDk</a></p><hr/><p style=\"line-height: 1.75em;\">下载对应的版本后安装即可。如果报错 <code>msvcp110.dll</code> 缺失</p><p style=\"line-height: 1.75em;\">请下载对应版本补丁，卸载后安装补丁重新安装wamp</p><p style=\"line-height: 1.75em;\">下载地址：64位 <a href=\"http://pan.baidu.com/s/1CvryA\">http://pan.baidu.com/s/1CvryA</a></p><p style=\"line-height: 1.75em;\">下载地址：32位 <a href=\"http://pan.baidu.com/s/1bnEvjnp\">http://pan.baidu.com/s/1bnEvjnp</a></p><p style=\"line-height: 1.75em;\">在安装前，请关闭迅雷等占用80端口的程序，避免安装失败</p><p style=\"line-height: 1.75em;\">安装完成后，在电脑右下角有个&nbsp;<span style=\"color: rgb(255, 0, 0);\">W&nbsp;</span>标志，点击然后选择 <code><span style=\"color: rgb(255, 0, 0);\">Apache</span> </code>然后选择 <code><span style=\"color: rgb(255, 0, 0);\">Apache_modules</span></code> 选中 <code><span style=\"color: rgb(255, 0, 0);\">rerite_module</span></code></p><p style=\"line-height: 1.75em;\">Wamp会自动重启Apache。</p><p style=\"line-height: 1.75em;\">把下载好的文件放入安装好的<span style=\"color: rgb(255, 0, 0);\">WWW</span>目录下。默认是C:/wamp/www</p><p style=\"line-height: 1.75em;\">这时候需要配置下数据库。请打开浏览器输入: localhost/phpmyadmin</p><p style=\"line-height: 1.75em;\">点击左边的<span style=\"color: rgb(255, 0, 0);\"> *NEW</span> 新建 数据库 这里推荐web 选择编码为<span style=\"color: rgb(255, 0, 0);\"> utf8_gencil</span>.</p><p style=\"line-height: 1.75em;\">创建完成后，<span style=\"color: rgb(255, 0, 0);\">点击进去</span>。然后中间的<span style=\"color: rgb(255, 0, 0);\">导入</span>，选择下载文件的sql.sql文件。导入即可。<br/></p><p style=\"line-height: 1.75em;\">然后在浏览器输入： localhost/public_html就可以正常访问了。</p><p><br/></p><p><br/></p>', '2', '81', '0', 'Win 7', '隆航', '59.172.58.19');
INSERT INTO `by_article` VALUES ('49', '/Upload/Thumb/1437624174.jpg', '武汉天气10大神定律', '武汉天气10大神定律。看看网友怎么 吐槽武汉天气的吧', '天气', '2', '1437624174', '<p style=\"line-height: 1.75em; text-align: center;\">最近，武汉的天气，可是十分的任性！高兴就来点火辣辣的太阳，不高兴就耍一场大雨！对于这种无节操无底线的天气，网友总结出了十条武汉天气定律，且看且珍惜！最后一条绝壁是真理！</p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第一定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　一天走四季！大雨说来就来！没有一点点防备也没有一丝顾虑，就这样来到我们身边！</p><p style=\"line-height: 1.75em; text-align: center;\">　　<img alt=\"1.jpeg\" src=\"/Upload/20150723/1437624019234825.jpeg\" title=\"1437624019234825.jpeg\"/></p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第二定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　大雨突袭之前，免费观看灾难大片。微博朋友圈立马很多摄影大师出现，不用外出也能好好观赏大片。</p><p style=\"line-height: 1.75em; text-align: center;\">　　<img alt=\"2.jpeg\" src=\"/Upload/20150723/1437624032297114.jpeg\" title=\"1437624032297114.jpeg\"/></p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第三定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　暴雨后，市区均会变成海洋，在武汉不会开公交的司机不是好船长！在武汉不会坐公交的乘客不是好水手！</p><p style=\"line-height: 1.75em; text-align: center;\">　　<img alt=\"3.jpeg\" src=\"/Upload/20150723/1437624048102207.jpeg\" title=\"1437624048102207.jpeg\"/></p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第四定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　大雨之后必然看海，看海之后必然玩水，玩水同时必发微博，发完微博之后，淌水回家！</p><p style=\"line-height: 1.75em; text-align: center;\">　　<img alt=\"4.jpeg\" src=\"/Upload/20150723/1437624058139554.jpeg\" title=\"1437624058139554.jpeg\"/></p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第五定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　下雨天出门，人字拖短裤+雨伞才是标配。</p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第六定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　下雨天，听说武汉的长发美女一秒变汉子哦~</p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第七定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　千奇百怪的出行方式，考验武汉市民智慧的时候到了！</p><p style=\"line-height: 1.75em; text-align: center;\">　<img alt=\"5.jpeg\" src=\"/Upload/20150723/1437624094103277.jpeg\" title=\"1437624094103277.jpeg\"/></p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第八定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　每次武汉看海，网上相关的段子量可淹没三个完整的东湖...</p><p style=\"line-height: 1.75em; text-align: center;\">　　感谢段子手的贡献</p><p style=\"line-height: 1.75em; text-align: center;\">　　玉皇大帝来到东海龙宫，龙王：您好，请问有什么可以帮您的；玉帝：我想下点雨；龙王：那么您想下在哪里呢？玉帝：湖北吧；龙王：具体哪里呢？玉帝：武汉；龙王：好的，尽快为您办理，您是VIP客户，我们附赠双倍份量。——这就是武汉可以每年看海的原因。</p><p style=\"line-height: 1.75em; text-align: center;\">　　背水一战～～</p><p style=\"line-height: 1.75em; text-align: center;\">　　听说菜场已被攻陷，晚上估计吃泡面～</p><p style=\"line-height: 1.75em; text-align: center;\">　　出门开车带上大汤勺子，挖水用处大～</p><p style=\"line-height: 1.75em; text-align: center;\">　　世界上最远的距离，是你在秦皇岛看海，我在武汉看海～</p><p style=\"line-height: 1.75em; text-align: center;\">　　华科沦陷，说明在武汉上学，要么学船舶，要么学漂流！</p><p style=\"line-height: 1.75em; text-align: center;\">　　不就是淹个水，租个皮艇去上班！</p><p style=\"line-height: 1.75em; text-align: center;\">　　平时，武汉是东方底特律；放假时，武汉变成了东方拉斯维加斯；下雨时，武汉又一跃成为东方威尼斯；夏天，武汉俨然成为了东方撒哈拉；冬天，武汉又变成了东方的西伯利~还有下大雨时：“爱她，就带她去武大看海吧！”</p><p style=\"line-height: 1.75em; text-align: center;\">　　今天是6月18号，6月份里武汉只下了两场雨，一场10天，一场8天。</p><p style=\"line-height: 1.75em; text-align: center;\">　　在武汉不会开公交车的司机不是好船长。</p><p style=\"line-height: 1.75em; text-align: center;\">　　华科和武大正式更名为华中海洋科技大学、国立武汉水族馆。</p><p style=\"line-height: 1.75em; text-align: center;\">　　夏天来了，有人愿意来武汉一起看海吗？</p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第九定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　一旦武汉开始下雨，没有那么个12条内裤，请不要称自己是土豪！</p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>武汉天气第十定律</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　千万不要相信 天！气！预！报！</p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>听说今晚大暴雨，武汉和看海更配哦~</strong></p><p style=\"line-height: 1.75em; text-align: center;\">　　<strong>小伙伴们珍重！</strong></p><p><br/></p>', '2', '71', '1', 'Win 7', '隆航', '221.235.63.30');
INSERT INTO `by_article` VALUES ('50', '/Upload/Thumb/1437643644.jpg', '博客整合缩略图功能', '上次整合缩略图，结果忘记发出来了。群里的朋友提起我才想起来我没发出来。', '缩略图', '4', '1437643644', '<p style=\"line-height: 1.75em;\">上次整合缩略图，结果忘记发出来了。群里的朋友提起我才想起来我没发出来。</p><p style=\"line-height: 1.75em;\">先上效果图。</p><p style=\"line-height: 1.75em;\"><img alt=\"QQ截图20150723172547.png\" src=\"/Upload/20150723/1437643360137628.png\" title=\"1437643360137628.png\"/></p><p style=\"line-height: 1.75em;\">，具体的话可以参考我的博客的效果图。</p><p style=\"line-height: 1.75em;\"><img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/>，首先在源码中的 App/Common/Common/function.php中添加</p><pre class=\"brush:php;toolbar:false\"><p style=\"line-height: 1.75em;\">&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;生成缩略图<br/>&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;thumbImg($str){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;preg_match_all(&quot;/(src)=([\\&quot;|&#39;]?)([^&nbsp;\\&quot;&#39;&gt;]+\\.(gif|jpg|jpeg|bmp|png))\\\\2/i&quot;,&nbsp;$str,&nbsp;$img);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if($img[0][0]){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$src&nbsp;=&nbsp;substr($img[0][0],5,-1);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$image&nbsp;=&nbsp;new&nbsp;\\Think\\Image();&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$image-&gt;open(&#39;.&#39;.$src);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$name&nbsp;=&nbsp;time();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$image-&gt;thumb(150,&nbsp;120)-&gt;save(&#39;./Upload/Thumb/&#39;.$name.&#39;.jpg&#39;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$url&nbsp;=&nbsp;&#39;/Upload/Thumb/&#39;.$name.&#39;.jpg&#39;;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$url;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;flase;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/></p></pre><p style=\"line-height: 1.75em;\">然后在 User/Controller/ArticleController.class.php修改addArticleHandle</p><pre class=\"brush:php;toolbar:false\"><p style=\"line-height: 1.75em;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;function&nbsp;addArticleHandle(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;发表文章表单操作<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$url&nbsp;=&nbsp;thumbImg($_POST[&#39;a_content&#39;]);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$data&nbsp;=&nbsp;array&nbsp;(<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_title&#39;&nbsp;=&gt;&nbsp;I(&#39;post.a_title&#39;),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;pid&#39;&nbsp;=&gt;&nbsp;I(&#39;post.pid&#39;),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_url&#39;&nbsp;=&gt;&nbsp;$url,<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_keyword&#39;&nbsp;=&gt;&nbsp;I(&#39;post.a_keyword&#39;),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_remark&#39;&nbsp;=&gt;&nbsp;I(&#39;post.a_remark&#39;),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_content&#39;&nbsp;=&gt;&nbsp;$_POST[&#39;a_content&#39;],<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_from&#39;=&gt;&nbsp;getOS(),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_view&#39;&nbsp;=&gt;&nbsp;I(&#39;post.a_view&#39;),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_hit&#39;&nbsp;=&gt;&nbsp;I(&#39;post.a_hit&#39;),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_writer&#39;&nbsp;=&gt;&nbsp;I(&#39;post.a_writer&#39;),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_time&#39;&nbsp;=&gt;&nbsp;time(),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;a_ip&#39;&nbsp;=&gt;&nbsp;get_client_ip(),<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(D(&#39;Article&#39;)-&gt;addArticle($data)){&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;success(&#39;发表文章完成！转调到文章列表&#39;,&#39;articleList&#39;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;error(&#39;发表文章失败！&#39;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/></p></pre><p style=\"line-height: 1.75em;\">如果本地测试，出现无效路径等请修改</p><pre class=\"brush:php;toolbar:false\"><p style=\"line-height: 1.75em;\">&nbsp;$image-&gt;open($src);<br/></p></pre><p style=\"line-height: 1.75em;\">如果有其他问题，请在群和博客中留言，谢谢。</p>', '2', '64', '0', 'Win 7', '隆航', '221.235.63.30');
INSERT INTO `by_article` VALUES ('66', '/Upload/Thumb/1438905204.jpg', '爱情就是如此《love is》', '一对恋人的平凡生活中的点点滴滴，但是却感动了所有人', '爱情', '3', '1438905204', '<p style=\"text-align:center\"><img src=\"/Upload/20150807/1438904690138033.gif\" title=\"1438904690138033.gif\" alt=\"1.gif\"/></p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">你是我的心跳。</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">我也是。</p><p style=\"text-align: center;\"><img src=\"/Upload/20150807/1438904715485630.gif\" title=\"1438904715485630.gif\" alt=\"2.gif\"/></p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">工作的时候很安静，难得见你这样不声不响。</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">如果眼神有力量，现在就让你的眼睛离开电脑，只看着我吧。</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">我时常这样想，却不想打扰你。你有你的事业，那是你的骄傲。</p><p style=\"text-align:center\"><img src=\"/Upload/20150807/1438904741889423.gif\" title=\"1438904741889423.gif\" alt=\"3.gif\"/></p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">为什么坐在这里？</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">因为想你一回头就能看到我。</p><p style=\"text-align:center\"><img src=\"/Upload/20150807/1438904773423000.gif\" title=\"1438904773423000.gif\" alt=\"4.gif\"/></p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">即使经历了一天的奔波劳累，依旧想为你做一桌美食。</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">你在厨房忙碌的身影，看起来很温柔。一定是倾注了爱意的晚餐吧。</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">真幸运，那个人是我。</p><p style=\"text-align:center\"><img src=\"/Upload/20150807/1438904799116880.gif\" title=\"1438904799116880.gif\" alt=\"5.gif\"/></p><p><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\">我真是娶了一个粗心的老婆，所以我务必要变成更细心的人啊。</span></p><p style=\"text-align:center\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><img src=\"/Upload/20150807/1438904822990201.gif\" title=\"1438904822990201.gif\" alt=\"6.gif\"/></span></p><p><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\">她看起来活力满满，其实胆小得很。所以不放心她一个人，担心她无法照顾好自己，然后就要陪上一辈子，护她百岁无忧。</span></span></p><p style=\"text-align:center\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><img src=\"/Upload/20150807/1438904878108885.gif\" title=\"1438904878108885.gif\" alt=\"7.gif\"/></span></span></p><p><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"></span></span></p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“女士，我可以邀请你跳一支舞吗？”</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“你又在做奇怪的事情了。”</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“你今天好美。”</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; text-indent: 2em; color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“……”</p><p><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><br/></span></span><br/></p><p style=\"text-align:center\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><img src=\"/Upload/20150807/1438904848131704.gif\" title=\"1438904848131704.gif\" alt=\"8.gif\"/></span></span></p><p><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\">爱是陪伴，是你在身边的每一天。</span></span></span></p><p><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(37, 37, 37); font-family: &#39;microsoft yahei&#39;, 宋体, arial; line-height: 28px; text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255);\">韩国动画作品《love is》，平凡才是爱的真谛。</span></span></span></span></p><p style=\"text-align: justify; text-indent: 32px; \"><span style=\"color:#252525;font-family:microsoft yahei, 宋体, arial\"><span style=\"line-height: 28px; background-color: rgb(255, 255, 255);\">附上视频地址：</span></span></p><p style=\"text-align: center;\"><span style=\"color:#252525;font-family:microsoft yahei, 宋体, arial\"><span style=\"line-height: 28px; background-color: rgb(255, 255, 255);\"><embed type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://player.youku.com/player.php/sid/XMTI4MTcwOTQ0OA==/v.swf\" width=\"100%\" height=\"280\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></span></span></p>', '1', '17', '1', 'Win 10', '网络', '114.111.167.12');

-- ----------------------------
-- Table structure for by_article_content
-- ----------------------------
DROP TABLE IF EXISTS `by_article_content`;
CREATE TABLE `by_article_content` (
  `a_id` int(11) NOT NULL DEFAULT '1' COMMENT '文章Id',
  `a_c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章评论逻辑Id',
  `a_c_time` int(10) NOT NULL COMMENT '文章评论时间',
  `a_c_ip` varchar(16) NOT NULL COMMENT '文章评论ip',
  `a_c_content` text NOT NULL COMMENT '文章评论内容',
  `a_c_name` varchar(32) NOT NULL COMMENT '文章评论作者',
  `a_c_img` text NOT NULL,
  `a_c_from` varchar(16) NOT NULL COMMENT '文章评论发表端',
  `a_c_email` varchar(32) NOT NULL COMMENT '文章评论邮箱',
  `a_c_url` varchar(32) NOT NULL COMMENT '文章评论域名',
  `a_c_uname` varchar(32) NOT NULL COMMENT '文章回复作者',
  `a_c_ucontent` text NOT NULL COMMENT '文章回复内容',
  `a_c_utime` int(10) DEFAULT NULL COMMENT '文章回复时间',
  PRIMARY KEY (`a_c_id`),
  KEY `a_id` (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='文章评论表';

-- ----------------------------
-- Records of by_article_content
-- ----------------------------
INSERT INTO `by_article_content` VALUES ('46', '47', '1437298732', '60.216.242.148', '[em_63]不错，这适应手机做的太好了。', '呵呵', '/Public/Img/Portrait/66.jpg', '华为', '276172383@qq.com', '', '隆航', '谢谢，主要是利用Bootstrap3，先适应手机后考虑电脑的。', '1437298977');
INSERT INTO `by_article_content` VALUES ('46', '49', '1437319361', '111.177.45.155', '66666', 'timor', '/Public/Img/Portrait/62.jpg', '魅族4', '752136964@qq.com', '', '隆航', '[em_51]我不是故意的', '1437355202');
INSERT INTO `by_article_content` VALUES ('45', '51', '1437364221', '59.172.58.19', '[em_71]看看自己的QQ头像', '我是兴高采烈', 'http://q.qlogo.cn/qqapp/101232670/7C8F797F30B08554A6E39A537F9A324B/40', 'Win 7', '775919499@qq.com', 'http://loveteemo.com', '', '', null);
INSERT INTO `by_article_content` VALUES ('45', '52', '1437377980', '117.79.232.5', '精美，与WP的后台基本一样。', '夏日博客', '/Public/Img/Portrait/97.jpg', 'Win XP', 'qq@qq.com', 'http://www.xiariboke.com', '隆航', '谢谢，感谢来访。', '1437378385');
INSERT INTO `by_article_content` VALUES ('45', '53', '1437379855', '112.112.14.19', '博主，我学习程序也是两年多了，不过是java\r\n我想使用 你这套博客做个技术总结，但是你这个博客好像缺少一个搜索功能', 'tianming', '/Public/Img/Portrait/63.jpg', 'Win 8.1', '1690356080@qq.com', 'http://www.tianming.com', '隆航', '欢迎使用，关于下载功能，已添加在下个版本的开发中。如果有兴趣可以自己写一个的。也可以等下一个版本开源的', '1437380234');
INSERT INTO `by_article_content` VALUES ('49', '56', '1437626710', '111.177.45.155', '666666', '一笺清浅入夏来', 'http://q.qlogo.cn/qqapp/101232670/4652A942951651A7F4192DC0BF5251E6/40', '魅族4', '752136964@qq.com', '', '隆航', '晚上回家看看coco。不晓得吓成什么样了', '1437626823');
INSERT INTO `by_article_content` VALUES ('49', '58', '1437731342', '116.30.168.27', '深圳也暴雨了', '手机回收', '/Public/Img/Portrait/21.jpg', 'Win 8', '836689535@qq.com', 'http://www.58yiji.com/', '隆航', '武汉淹的厉害，是时候看看一个城市的排水实力了。哈哈', '1437738893');
INSERT INTO `by_article_content` VALUES ('58', '61', '1437979412', '58.49.16.86', '[em_2]测试', '我是兴高采烈', 'http://q.qlogo.cn/qqapp/101232670/7C8F797F30B08554A6E39A537F9A324B/40', 'Win 7', '12@qq.com', 'http://sada/com', '', '', null);
INSERT INTO `by_article_content` VALUES ('58', '62', '1437979443', '58.49.16.86', '大大的', '我是兴高采烈', 'http://q.qlogo.cn/qqapp/101232670/7C8F797F30B08554A6E39A537F9A324B/40', 'Win 7', '12@qq.com', '', '', '', null);

-- ----------------------------
-- Table structure for by_form
-- ----------------------------
DROP TABLE IF EXISTS `by_form`;
CREATE TABLE `by_form` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of by_form
-- ----------------------------
INSERT INTO `by_form` VALUES ('1', '111', '1111', '0');
INSERT INTO `by_form` VALUES ('2', 'dsafdk范德萨家里开飞机上考了', '### 语句 ', '0');
INSERT INTO `by_form` VALUES ('3', '11', 'fdsa', '0');
INSERT INTO `by_form` VALUES ('4', '', '', '0');
INSERT INTO `by_form` VALUES ('5', '《JavaScript高级程序设计》笔记系列2-- 基本概念1', '## 语法\r\n\r\n\r\n### 区分大小写\r\n\r\n第一个概念就是` ECMAScript `中的一切（变量、函数名和操作符）都区分大小写。\r\n变量名 test 和变量名 Test 分别表示两个不同的变量。\r\n\r\n### 标识符\r\n所谓标识符，就是指变量、函数、属性的名字，或者函数的参数。\r\n命名规则：\r\n- 第一个字符必须是一个字母、下划线（_）或一个美元符号（$）\r\n- 其他字符可以是字母、下划线、美元符号或数字\r\n\r\n标识符采用驼峰大小写格式，也就是第一个字母小写，剩下的每个单词的首字母大写，例如：\r\n', '0');
INSERT INTO `by_form` VALUES ('6', '烦死哒', '```\r\nif (test)\r\n    alert(test); // 有效但容易出错，不要使用\r\n    \r\nif (test){ // 推荐使用\r\n    alert(test);\r\n}\r\n```', '0');
INSERT INTO `by_form` VALUES ('7', '《JavaScript高级程序设计》笔记系列2-- 基本概念1', '## 语法\r\n\r\n\r\n### 区分大小写\r\n\r\n第一个概念就是` ECMAScript `中的一切（变量、函数名和操作符）都区分大小写。\r\n变量名 test 和变量名 Test 分别表示两个不同的变量。\r\n\r\n### 标识符\r\n所谓标识符，就是指变量、函数、属性的名字，或者函数的参数。\r\n命名规则：\r\n- 第一个字符必须是一个字母、下划线（_）或一个美元符号（$）\r\n- 其他字符可以是字母、下划线、美元符号或数字\r\n\r\n标识符采用驼峰大小写格式，也就是第一个字母小写，剩下的每个单词的首字母大写，例如：\r\n', '0');
INSERT INTO `by_form` VALUES ('8', '《JavaScript高级程序设计》笔记系列2-- 基本概念1', '## 语法\r\n\r\n\r\n### 区分大小写\r\n\r\n第一个概念就是` ECMAScript `中的一切（变量、函数名和操作符）都区分大小写。\r\n变量名 test 和变量名 Test 分别表示两个不同的变量。\r\n\r\n### 标识符\r\n所谓标识符，就是指变量、函数、属性的名字，或者函数的参数。\r\n命名规则：\r\n- 第一个字符必须是一个字母、下划线（_）或一个美元符号（$）\r\n- 其他字符可以是字母、下划线、美元符号或数字\r\n\r\n标识符采用驼峰大小写格式，也就是第一个字母小写，剩下的每个单词的首字母大写，例如：\r\n\r\n`firstSecond`\r\n`myCar`\r\n`doSomethingImportant`\r\n\r\n不能把关键字、保留字、` true`、 `false `和 `null` 用作标识符\r\n\r\n### 注释\r\n\r\n- 单行注释\r\n```\r\n// 单行注释\r\n```\r\n- 块级注释\r\n```\r\n/*\r\n * 这是一个多行\r\n * （块级）注释\r\n */\r\n```\r\n虽然上面注释中的第二和第三行都以一个星号开头，但这不是必需的。之所以添加那两个星号，纯粹是为了提高注释的可读性.\r\n\r\n### 严格模式\r\n\r\nECMAScript 5 引入了严格模式`（strict mode）`的概念。严格模式是为 JavaScript定义了一种不同的解析与执行模型。在严格模式下， ECMAScript 3 中的一些不确定的行为将得到处理，而且对某些不安全的操作也会抛出错误。要在整个脚本中启用严格模式，可以在顶部添加如下代码：\r\n\r\n```\r\n&quot;use strict&quot;;\r\n```\r\n\r\n### 语句\r\n\r\n- ECMAScript 中的语句以一个分号结尾，如果省略分号，则由解析器确定语句的结尾。。。**建议不要省略分号** 加上分号可以避免代码在压缩的时候出错，同时解析速度会更快。。。\r\n- {} 代码块 \r\n\r\n```\r\nif (test)\r\n    alert(test); // 有效但容易出错，不要使用\r\n    \r\nif (test){ // 推荐使用\r\n    alert(test);\r\n}\r\n```\r\n在控制语句中使用代码块可以让编码意图更加清晰，而且也能降低修改代码时出错的几率。\r\n\r\n## 关键字和保留字\r\n\r\n特定用途的关键字，这些关键字可用于表示控制语句的开始或结束，或者用于执行特定操作等\r\n\r\n关键字也是语言保留的，不能用作标识符。\r\n\r\n```\r\nbreak        do          instanceof      typeof\r\ncase         else        new             var\r\ncatch        finally     return          void\r\ncontinue     for         switch          while\r\ndebugger     function    this            with\r\ndefault      if          throw\r\ndelete       in          try\r\n```\r\n\r\n当然还有一部分保留字，没有列举出来。。。\r\n\r\n## 变量\r\n\r\nECMAScript 的变量是松散类型的，所谓松散类型就是可以用来保存任何类型的数据。每个变量仅仅是一个用于保存值的占位符而已。定义变量时要使用` var `操作符。\r\n\r\n```\r\nvar message; //这行代码定义了一个名为message的变量，该变量可以用来保存任何值。\r\n\r\nmessage = &quot;string&quot;; //这时message是字符串类型\r\n\r\nmessage = 123; // 这时message是数字类型\r\n\r\nmessage = [1,2,3]; // 这时message是数组类型\r\n```\r\n\r\n用` var `操作符定义的变量将成为定义该变量的作用域中的局部变量。如果在函数中使用 `var` 定义一个变量，那么这个变量在函数退出后就会被销毁 \r\n\r\n```\r\nfunction test(){\r\n    var message = &quot;hi&quot;; // 局部变量\r\n}\r\ntest();\r\nalert(message); // 错误！message 变量的作用域仅仅在test这个函数内有效。。。\r\n```\r\n\r\n```\r\nfunction test(){\r\n    message = &quot;hi&quot;; // 全局变量\r\n}\r\ntest();\r\nalert(message); // &quot;hi&quot; 这里的message 没有使用var来修饰，那么message就是全局变量。。。只要调用过一次 test()函数，这个变量就有了定义，就可以在函数外部的任何地方被访问到。\r\n```\r\n虽然省略` var` 操作符可以定义全局变量，但这也不是我们推荐的做法。因为在局部作用域中定义的全局变量很难维护，而且如果有意地忽略了 `var` 操作符，也会由于相应变量不会马上就有定义而导致不必要的混乱。\r\n\r\n', '0');

-- ----------------------------
-- Table structure for by_gustbook
-- ----------------------------
DROP TABLE IF EXISTS `by_gustbook`;
CREATE TABLE `by_gustbook` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言Id',
  `c_time` int(10) NOT NULL COMMENT '留言评论时间',
  `c_ip` varchar(16) NOT NULL COMMENT '留言评论ip',
  `c_content` text NOT NULL COMMENT '留言评论内容',
  `c_name` varchar(32) NOT NULL COMMENT '留言评论作者',
  `c_img` text NOT NULL,
  `c_from` varchar(16) NOT NULL COMMENT '留言评论发表端',
  `c_email` varchar(32) NOT NULL COMMENT '留言评论邮箱',
  `c_url` varchar(32) NOT NULL COMMENT '留言评论域名',
  `c_uname` varchar(32) NOT NULL COMMENT '留言回复作者',
  `c_ucontent` text NOT NULL COMMENT '留言回复内容',
  `c_utime` int(10) DEFAULT NULL COMMENT '留言回复时间',
  PRIMARY KEY (`c_id`),
  KEY `c_uname` (`c_uname`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='文章评论表';

-- ----------------------------
-- Records of by_gustbook
-- ----------------------------
INSERT INTO `by_gustbook` VALUES ('18', '1436869994', '59.61.43.132', 'nopapa,nohaha!', '原谅我孤独成性心软成命。', 'http://qzapp.qlogo.cn/qzapp/101232670/ACD0F71C84A99D83F176EA8E9BDEEA5D/50', 'Win 7', 'agel0829zmy@qq.com', '', '隆航', '洋洋，邮箱没写哟，我帮你补上了。[em_20]', '1436876123');
INSERT INTO `by_gustbook` VALUES ('20', '1436964590', '117.21.165.138', '我是', '锐总网络', 'http://qzapp.qlogo.cn/qzapp/101232670/1734C55935F456243464D8A438D0C222/50', 'Win 7', '898877749@qq.com', 'http://yanl520.com/', '隆航', '由于QQ获取的时候过滤了名称，我帮你加上去了。谢谢来访~', '1436972514');
INSERT INTO `by_gustbook` VALUES ('22', '1437212792', '117.151.114.250', '怎样获取我的系统版本的 ', 'new life', 'http://qzapp.qlogo.cn/qzapp/101232670/94BEBEC982B54FCCE58C80EB409D715E/50', 'Win 8.1', 'dhcent@139.com', '', '隆航', '用函数获取的，为了方便，我已经用文章发出来了，请查看。', '1437214582');
INSERT INTO `by_gustbook` VALUES ('23', '1437219506', '116.253.218.32', '博主，你好，boke123导航（博客导航站）特来拜会，已将贵站收录到博客导航的建站技术类，谢谢支持！', 'boke123导航', '/Public/Img/Portrait/7.jpg', 'Win 7', 'admin@boke123.net', 'http://boke123.net', '隆航', '好的，谢谢来访！', '1437222475');
INSERT INTO `by_gustbook` VALUES ('27', '1437462417', '115.153.47.233', '我是来打酱油的，老板，多少钱一斤。', '厦门-小图', 'http://q.qlogo.cn/qqapp/101232670/CB15BA70FDD7736EB199953D88917D8B/40', 'Win 7', '2297999137@qq.com', '', '隆航', '欢迎。以后常来看看。', '1437464167');
INSERT INTO `by_gustbook` VALUES ('30', '1437714074', '222.173.220.237', '踩一脚,博主加油,摸摸大~', '', 'http://q.qlogo.cn/qqapp/101232670/75C026171F9B1663535F5670922A0443/40', 'Win 7', '799416774@qq.com', '', '隆航', '谢谢支持。我会一直更新博客下去的', '1437715093');
INSERT INTO `by_gustbook` VALUES ('31', '1438483239', '119.102.92.100', '每次进你的留言板都要等好久。- - 进其他的都挺快，应该是代码冗余了。\r\n一个BUG，就是你文章页下面的分享和上面的信息重叠了。。\r\n还有个建议，设置一下登录QQ后留言板的昵称无法修改。', '伊始', 'http://q.qlogo.cn/qqapp/101232670/5A2392DD5DF54DF26110363977A0A901/40', 'Win 10', '774694235@qq.com', 'hhtp://www.foryan.com', '隆航', '留言板的代码是没问题，我刚检查过，应该是我在表中没有添加索引。文章页的信息其实没有冲突的，上面是时间，作者，点击，下面是发布时间，评论数量的。最后的这个建议我会考虑的。', '1438483935');

-- ----------------------------
-- Table structure for by_link
-- ----------------------------
DROP TABLE IF EXISTS `by_link`;
CREATE TABLE `by_link` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '友情连接id',
  `l_name` varchar(64) NOT NULL COMMENT '友情链接名称',
  `l_url` varchar(128) NOT NULL COMMENT '友情连接地址',
  `l_sort` int(11) NOT NULL COMMENT '友情连接排序',
  `l_remark` text NOT NULL COMMENT '友情链接介绍',
  `l_view` int(11) NOT NULL DEFAULT '0',
  `l_level` int(11) NOT NULL DEFAULT '0',
  `l_email` varchar(64) NOT NULL COMMENT '友链邮箱',
  `l_time` int(11) NOT NULL COMMENT '添加时间',
  `l_ip` varchar(16) NOT NULL COMMENT '友链IP地址',
  `l_uname` varchar(32) NOT NULL COMMENT '友链回复人',
  `l_ucontent` text NOT NULL COMMENT '友链回复内容',
  `l_utime` int(11) NOT NULL COMMENT '友链回复时间',
  PRIMARY KEY (`l_id`),
  KEY `l_level` (`l_level`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='友情连接表';

-- ----------------------------
-- Records of by_link
-- ----------------------------
INSERT INTO `by_link` VALUES ('1', '偏执大叔', 'http://conglee.com', '1', '偏执大叔', '1', '2', 'test@qq.com', '1430238360', '', '隆航', 'test', '1438511172');
INSERT INTO `by_link` VALUES ('2', '浅听风雨', 'http://foryan.com', '1', '浅听风雨的个人博客', '1', '1', 'test@qq.com', '0', '', '隆航', 'test', '1438511162');
INSERT INTO `by_link` VALUES ('5', 'ThinkPHP', 'http://thinkphp.cn', '100', 'TP官网', '1', '2', 'test@qq.com', '0', '', '隆航', 'test', '1438511144');
INSERT INTO `by_link` VALUES ('8', '武汉合伙人', 'http://www.heyneo.cn/', '98', '武汉合伙人，年轻的创业团队', '1', '2', 'qq@qq.com', '1438511072', '', '隆航', '已添加', '1438511101');

-- ----------------------------
-- Table structure for by_picture
-- ----------------------------
DROP TABLE IF EXISTS `by_picture`;
CREATE TABLE `by_picture` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片逻辑id',
  `p_url` varchar(64) NOT NULL COMMENT '图片地址',
  `p_view` int(11) NOT NULL COMMENT '图片视图',
  `al_id` int(11) NOT NULL COMMENT '图片相册Id',
  PRIMARY KEY (`p_id`),
  KEY `al_id` (`al_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='图片表';

-- ----------------------------
-- Records of by_picture
-- ----------------------------
INSERT INTO `by_picture` VALUES ('22', '/Upload/Album/album-12/1436933428.png', '1', '12');
INSERT INTO `by_picture` VALUES ('19', '/Upload/Album/album-10/1436573884.jpg', '1', '10');
INSERT INTO `by_picture` VALUES ('21', '/Upload/Album/album-12/1436933411.png', '1', '12');

-- ----------------------------
-- Table structure for by_qquser
-- ----------------------------
DROP TABLE IF EXISTS `by_qquser`;
CREATE TABLE `by_qquser` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `qqname` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'QQ昵称',
  `qqimg` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'QQ头像',
  `qqnum` int(11) NOT NULL COMMENT '访问次数',
  PRIMARY KEY (`id`),
  KEY `qqimg` (`qqimg`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='QQ表';

-- ----------------------------
-- Records of by_qquser
-- ----------------------------
INSERT INTO `by_qquser` VALUES ('1', '堕落的龙少', 'http://q.qlogo.cn/qqapp/101232670/8261DD3B1BCDC7D6234C31079DFEC540/100', '1');
INSERT INTO `by_qquser` VALUES ('2', '我是兴高采烈', 'http://q.qlogo.cn/qqapp/101232670/7C8F797F30B08554A6E39A537F9A324B/100', '5');
INSERT INTO `by_qquser` VALUES ('3', '一笺清浅入夏来', 'http://q.qlogo.cn/qqapp/101232670/4652A942951651A7F4192DC0BF5251E6/100', '2');
INSERT INTO `by_qquser` VALUES ('4', 'κiζsヤ執著の守候シ', 'http://q.qlogo.cn/qqapp/101232670/520D623AB03AF87EA96D95EA604FB2EC/100', '1');
INSERT INTO `by_qquser` VALUES ('5', '桃之夭夭', 'http://q.qlogo.cn/qqapp/101232670/E345137983738B8B87A6A8DA5C7411A6/100', '1');
INSERT INTO `by_qquser` VALUES ('6', '流逝在笔尖的回忆', 'http://q.qlogo.cn/qqapp/101232670/1C606C2C9863280D7EDF83136A3C9D39/100', '1');
INSERT INTO `by_qquser` VALUES ('7', '大白兔奶糖丶 ', 'http://q.qlogo.cn/qqapp/101232670/E43337D0D193E7CC4168724999E8CD81/100', '1');
INSERT INTO `by_qquser` VALUES ('8', '倒转流年丶只为一眼红颜', 'http://q.qlogo.cn/qqapp/101232670/0A36AC9505946E531C9B8785ABBCDD33/100', '1');
INSERT INTO `by_qquser` VALUES ('9', '未央莫愁湖', 'http://q.qlogo.cn/qqapp/101232670/63DC19FAAAFDB114F3772FE0E30CFB27/100', '1');
INSERT INTO `by_qquser` VALUES ('10', '三余读书', 'http://q.qlogo.cn/qqapp/101232670/8AF25E133AF866E075F1186DBA15A913/100', '1');

-- ----------------------------
-- Table structure for by_said
-- ----------------------------
DROP TABLE IF EXISTS `by_said`;
CREATE TABLE `by_said` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '说说逻辑排序',
  `s_content` text NOT NULL COMMENT '说说内容',
  `s_from` varchar(16) NOT NULL DEFAULT '1',
  `s_writer` varchar(32) NOT NULL COMMENT '说说作者',
  `s_hit` int(11) NOT NULL DEFAULT '1' COMMENT '说说点击量',
  `s_view` int(11) NOT NULL DEFAULT '1' COMMENT '说说的显推',
  `s_ip` varchar(16) NOT NULL COMMENT '说说ip',
  `s_time` int(10) NOT NULL COMMENT '说说发表时间',
  PRIMARY KEY (`s_id`),
  KEY `s_id` (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='说说表';

-- ----------------------------
-- Records of by_said
-- ----------------------------
INSERT INTO `by_said` VALUES ('18', '<p>添加搜索样式<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p>', 'Win 8.1', '隆航', '1', '2', '122.228.229.216', '1437407843');
INSERT INTO `by_said` VALUES ('12', '<p>相册评论尚未完成。待开发。</p>', 'Win 8.1', '隆航', '1', '1', '114.111.167.14', '1436574328');
INSERT INTO `by_said` VALUES ('14', '<p>新版bug:百度编辑器图片不能自适应<br/></p>', 'iPhone', '隆航', '1', '2', '113.57.247.178', '1437008025');
INSERT INTO `by_said` VALUES ('15', '<p>用户体验性优化</p><p>--优化HTML头部SEO 已完成 7.13</p><p>--修复相册显示底部小BUG 7.13</p><p>--完成QQ登陆后评论 已完成 7.14</p><p><span style=\"line-height: normal;\">--QQ互联已完成</span></p><p><span style=\"line-height: normal;\">--微调评论留言样式 已完成 7.15</span></p><p><span style=\"line-height: normal;\">--前后台程序下载模块</span></p><p><span style=\"line-height: normal;\">--文章图片显示微调 适用手机端</span></p><p><span style=\"line-height: normal;\">--优化文章评论头像不显示</span></p><p><span style=\"line-height: normal;\">--优化相册评论</span></p><p><span style=\"line-height: normal;\">--优化评论留言</span></p><p><span style=\"line-height: normal;\">--优化底部相册列表</span></p><p><span style=\"line-height: normal;\">--更新缩略图</span></p><p><span style=\"line-height: normal;\">--优化显示文章缩略图位置的alt title标签</span></p><p><span style=\"line-height: normal;\">--优化修改文章时 &nbsp;文章发表时间 ip 来自保持不更新</span></p><p><span style=\"line-height: normal;\">--优化评论必须昵称和邮箱 QQ登录后自动获取昵称</span></p><p><br/></p>', 'Win 8.1', '隆航', '1', '2', '114.111.167.6', '1437147308');
INSERT INTO `by_said` VALUES ('19', '<p>新增评论审核，让你们全给我乱留言测试<img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/></p>', 'Win 8.1', '隆航', '1', '2', '122.228.228.99', '1437493504');
INSERT INTO `by_said` VALUES ('21', '<p>优化缩略图像素<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p>', 'Win 8.1', '隆航', '1', '2', '114.111.167.12', '1437748814');
INSERT INTO `by_said` VALUES ('23', '<p>添加了推荐图标</p><p>添加了邻居模块</p><p>添加了QQ登陆记录表</p><p>添加了二级链接</p><p>添加了申请友链</p><p>添加了....</p>', 'Win 10', '隆航', '1', '1', '122.228.229.216', '1438511327');

-- ----------------------------
-- Table structure for by_said_content
-- ----------------------------
DROP TABLE IF EXISTS `by_said_content`;
CREATE TABLE `by_said_content` (
  `s_id` int(11) NOT NULL DEFAULT '1' COMMENT '说说Id',
  `s_c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '说说评论逻辑Id',
  `s_c_time` int(10) NOT NULL COMMENT '说说评论时间',
  `s_c_ip` varchar(16) NOT NULL COMMENT '说说评论ip',
  `s_c_content` text NOT NULL COMMENT '说说评论内容',
  `s_c_name` varchar(32) NOT NULL COMMENT '说说评论作者',
  `s_c_img` int(11) NOT NULL COMMENT '说说评论头像',
  `s_c_from` varchar(16) NOT NULL COMMENT '说说评论发表端',
  `s_c_email` varchar(32) NOT NULL COMMENT '说说评论邮箱',
  `s_c_url` varchar(32) NOT NULL COMMENT '说说评论域名',
  `s_c_uname` varchar(32) NOT NULL COMMENT '说说回复作者',
  `s_c_ucontent` text NOT NULL COMMENT '说说回复内容',
  `s_c_utime` int(10) DEFAULT NULL COMMENT '说说回复时间',
  PRIMARY KEY (`s_c_id`),
  KEY `s_id` (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='说说评论表';

-- ----------------------------
-- Records of by_said_content
-- ----------------------------

-- ----------------------------
-- Table structure for by_system
-- ----------------------------
DROP TABLE IF EXISTS `by_system`;
CREATE TABLE `by_system` (
  `id` int(11) NOT NULL COMMENT 'id',
  `title` varchar(128) NOT NULL COMMENT '网站标题',
  `title_2` varchar(256) NOT NULL COMMENT '网站二级标题',
  `keyword` varchar(256) NOT NULL COMMENT '网站关键字',
  `remark` text NOT NULL COMMENT '网站描述',
  `author` varchar(64) NOT NULL COMMENT '网站作者',
  `time` date NOT NULL COMMENT '建站时间',
  `icp` varchar(128) NOT NULL COMMENT '备案号',
  `copy` varchar(256) NOT NULL COMMENT '版权',
  `footer` text NOT NULL COMMENT '底部代码',
  `hit` int(11) NOT NULL COMMENT '总访问量',
  `url` varchar(128) NOT NULL DEFAULT 'www.loveteemo.com',
  `pay` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统基本设置';

-- ----------------------------
-- Records of by_system
-- ----------------------------
INSERT INTO `by_system` VALUES ('1', 'LoveTeemo', '青春因为爱情而美丽', '个人博客，青春，爱情，IT，PHP，Thinkphp', '青春因为爱情而美丽，这里记录我的爱情、学习、程序开源等等。愿访客和自己生活每一天都是 开开心心。', 'long', '2014-01-18', ' 鄂ICP备15000791号 ', '© 2014 - 2015 LoveTeemo博客 &amp; 版权所有 ', '<a href=\"./user\" target=\"_blank\" class=\"foot-my\"> 博客管理 </a> ', '53775', 'www.loveteemo.com', '10');

-- ----------------------------
-- Table structure for by_tag
-- ----------------------------
DROP TABLE IF EXISTS `by_tag`;
CREATE TABLE `by_tag` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目逻辑id',
  `t_name` varchar(64) NOT NULL COMMENT '栏目显示名称',
  `t_open` int(11) NOT NULL DEFAULT '1' COMMENT '栏目打开方式',
  `t_sort` int(11) NOT NULL DEFAULT '100' COMMENT '栏目排序',
  `t_remark` text NOT NULL COMMENT '栏目描述',
  `t_view` int(11) NOT NULL DEFAULT '1' COMMENT '栏目视图',
  `t_time` int(10) NOT NULL COMMENT '栏目添加时间',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of by_tag
-- ----------------------------
INSERT INTO `by_tag` VALUES ('1', '学习笔记', '2', '100', '学习笔记', '1', '1436067161');
INSERT INTO `by_tag` VALUES ('2', '生活随笔', '2', '100', '生活随笔', '1', '1436067169');
INSERT INTO `by_tag` VALUES ('3', '热点分享', '2', '100', '热点分享', '1', '1436067179');
INSERT INTO `by_tag` VALUES ('4', '程序相关', '2', '100', '程序相关', '1', '1436067188');

-- ----------------------------
-- Table structure for by_user
-- ----------------------------
DROP TABLE IF EXISTS `by_user`;
CREATE TABLE `by_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户逻辑Id',
  `name` varchar(32) NOT NULL COMMENT '登陆用户名',
  `password` varchar(32) NOT NULL COMMENT '登陆密码',
  `user` varchar(32) NOT NULL COMMENT '用户名',
  `class` int(11) NOT NULL COMMENT '用户类别',
  `last_time` int(11) NOT NULL COMMENT '用户登陆时间',
  `ip` varchar(16) NOT NULL COMMENT '用户登陆ip',
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of by_user
-- ----------------------------
INSERT INTO `by_user` VALUES ('1', 'admin', 'lh775919499', '隆航', '2', '1439081436', '127.0.0.1');
INSERT INTO `by_user` VALUES ('18', 'test', 'test', 'test', '1', '1438935242', '122.73.11.116');

-- ----------------------------
-- Table structure for by_version
-- ----------------------------
DROP TABLE IF EXISTS `by_version`;
CREATE TABLE `by_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '版本id',
  `title` varchar(256) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `author` varchar(64) NOT NULL COMMENT '作者',
  `time` int(10) NOT NULL COMMENT '时间',
  `ip` varchar(16) NOT NULL COMMENT 'ip',
  `version` varchar(16) NOT NULL COMMENT '版本',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='程序版本表';

-- ----------------------------
-- Records of by_version
-- ----------------------------
INSERT INTO `by_version` VALUES ('5', '更新版本删除和布局', '在后台模板中更新了版本删除功能和布局页面。', 'admin', '1430412590', '116.211.131.16', 'Beta v1.5.1a');
INSERT INTO `by_version` VALUES ('11', '更新前台部分页面', '更新前台部分页面，首页，关于页纯静态。文章列表页，文章页。后续同步到服务器', 'admin', '1430467609', '116.211.131.16', 'Beta v1.5.1b');
INSERT INTO `by_version` VALUES ('1', '测试版本1', '测试版本1', '隆航', '1430239169', '27.17.137.131', 'Beta v1.4.25b');
INSERT INTO `by_version` VALUES ('2', '优化数据库文件', '把每一个文件的增删查改用一个模块写，方便后期修改', '隆航', '1430241314', '27.17.137.131', 'Beta v1.4.27a');
INSERT INTO `by_version` VALUES ('4', '更新URL地址', '省略掉访问地址的Index.php，比如访问：www.loveteeemo.com/index.php/User/Login/index.html，则URL为www.loveteeemo.com/User/Login/index.html', 'admin', '1430410003', '116.211.131.16', 'Beta v1.4.30a');
INSERT INTO `by_version` VALUES ('12', '完善sider的时光隧道部分', '完善sider的时光隧道部分，用户名，说说，文章统计，运行天数，随机文章，最新评论列表，修复一些BUG', 'admin', '1430591772', '116.211.131.16', 'Beta v1.5.3');
INSERT INTO `by_version` VALUES ('13', '完成Listen说说列表模块和Said说说模块', '完成Listen说说列表模块和Said说说模块，其中Said的JS花的时候比较多，其他还待优化。\r\n大致程序写完了，会进行总体优化', 'admin', '1430784035', '116.211.131.16', 'Beta v1.5.5');
INSERT INTO `by_version` VALUES ('14', '首页更新完成，数据完全通过', '首页完成，路由正则重写', '隆航', '1436143017', '106.39.189.187', 'Bate v1.7.5');
INSERT INTO `by_version` VALUES ('15', '相册评论尚未完成。待开发。', '相册评论尚未完成。待开发。', '隆航', '1436574395', '114.111.167.14', 'Beta v1.7.11');
INSERT INTO `by_version` VALUES ('16', 'QQ互联完成，评论完成', 'QQ互联完成，评论完成', '隆航', '1436851394', '59.172.56.23', 'Beta v1.7.14');
INSERT INTO `by_version` VALUES ('18', '添加站长统计、微调后台样式', '1添加站长统计\r\n2微调后台新版本样式\r\n3微调后台高级设置', '隆航', '1436875770', '122.228.229.217', 'Beta v1.7.15');
INSERT INTO `by_version` VALUES ('19', '修复手机浏览时，因图片出现横向滚动条', '当手机访问时候，因图片宽度导致浏览器出现横向滚动条。主要针对手机自带浏览器', '隆航', '1437090666', '122.228.229.217', 'Beta v1.7.17');
INSERT INTO `by_version` VALUES ('20', '增加搜索和默认文章图标', '增加搜索及其功能，具体路由待完善。默认文章图标修改，', '隆航', '1437492070', '122.228.228.99', 'Beta v1.7.21');
INSERT INTO `by_version` VALUES ('21', '优化缩略图像素', '优化缩略图像素', '隆航', '1437748482', '114.111.167.12', 'Beta v1.7.24');
INSERT INTO `by_version` VALUES ('22', '添加原创标签', '在文章的标题处添加了添加原创标签', '隆航', '1438481067', '122.228.229.216', 'Beta v1.8.02');
INSERT INTO `by_version` VALUES ('23', '添加邻居栏目', '添加邻居栏目，把视图文件目录结构优化', '隆航', '1438510984', '122.228.229.216', 'Beta v1.8.03');
INSERT INTO `by_version` VALUES ('24', '无聊 随便更新点东西', '无聊 随便更新点东西', '隆航', '1438911849', '58.49.17.80', 'Beta v1.8.07');
