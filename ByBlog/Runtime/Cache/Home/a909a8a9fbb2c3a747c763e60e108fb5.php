<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <title>首页 - ByBlog </title>
    <meta name="keywords" content="ByBlog,markdown,thinkphp,博客系统,前端博客" />
    <meta name="description" content="ByBlog,markdown,thinkphp,博客系统,前端博客" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="bym邮箱：canglingyue@126.com" />
<link rel="Bookmark" href="/byblog/Public/Img/favicon.ico">
<link rel="Shortcut Icon" href="/byblog/Public/Img/favicon.ico">
<link href="/byblog/Public/Css/materialize.css" rel="stylesheet">
<link href="/byblog/Public/Css/basic.css" rel="stylesheet">
<link href="/byblog/Public/Css/home_css.css" rel="stylesheet">
<link href="//at.alicdn.com/t/font_1469156589_2439735.css" rel="stylesheet">
</head>
<body>
<nav>
    <div class="container nav-wrapper">
        <a href="/" class="brand-logo">ByBlog</a>
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="by bym-liebiao1"></i></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="/">首页</a></li>
            <li><a href="#">归档</a></li>
            <li><a href="<?php echo U('/Home/Newbee/listNewbee');?>">牛人博客</a></li>
            <li><a href="#">前端学习</a></li>
            <li><a href="#">插件介绍</a></li>
            <li><a href="#">代码片段</a></li>
        </ul>
        <ul class="side-nav" id="mobile-demo">
            <li><a href="/">首页</a></li>
            <li><a href="#">归档</a></li>
            <li><a href="<?php echo U('/Home/Newbee/listNewbee');?>">牛人博客</a></li>
            <li><a href="#">前端学习</a></li>
            <li><a href="#">插件介绍</a></li>
            <li><a href="#">代码片段</a></li>
        </ul>
    </div>
</nav>

<div id="content" class="home-index container">
    <div class="row pt-xlg">
        <div class="col s12 m12 l9">
            <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="a-list">
                    <p class="f-24 mb-none">
                        <a class="waves-effect waves-light" href="<?php echo U('Home/Content/content/id/'.$vo['a_id']);?>"><?php echo ($vo["a_title"]); ?></a>
                    </p>
                    <p class="c-666"><?php echo ($vo["a_remark"]); ?></p>
                    <p class="c-999">20<?php echo (date("y/m/d H:i",$vo["a_time"])); ?>发表 &nbsp; 点击量：<?php echo ($vo["a_hit"]); ?></p>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
        <div class="col s12 m12 l3">
            <div>
                <?php if(is_array($count)): $i = 0; $__LIST__ = $count;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i;?><p class="f-18 m-none"><?php echo ($vo2["a_time"]); ?> （<?php echo ($vo2["a_sum"]); ?>）</p><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <!-- 多说热评文章 start -->
            <div class="ds-top-threads" data-range="daily" data-num-items="5"></div>
            <!-- 多说热评文章 end -->
            <!-- 多说公共JS代码 start (一个网页只需插入一次) -->
            <script type="text/javascript">
                var duoshuoQuery = {short_name:"weberpub"};
                (function() {
                    var ds = document.createElement('script');
                    ds.type = 'text/javascript';ds.async = true;
                    ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
                    ds.charset = 'UTF-8';
                    (document.getElementsByTagName('head')[0]
                    || document.getElementsByTagName('body')[0]).appendChild(ds);
                })();
            </script>
            <!-- 多说公共JS代码 end -->
            <!-- 多说最新评论 start -->
            <div class="ds-recent-comments" data-num-items="5" data-show-avatars="1" data-show-time="1" data-show-title="1" data-show-admin="1" data-excerpt-length="70"></div>
            <!-- 多说最新评论 end -->
            <!-- 多说公共JS代码 start (一个网页只需插入一次) -->
            <script type="text/javascript">
                var duoshuoQuery = {short_name:"weberpub"};
                (function() {
                    var ds = document.createElement('script');
                    ds.type = 'text/javascript';ds.async = true;
                    ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
                    ds.charset = 'UTF-8';
                    (document.getElementsByTagName('head')[0]
                    || document.getElementsByTagName('body')[0]).appendChild(ds);
                })();
            </script>
            <!-- 多说公共JS代码 end -->
        </div>
    </div>

    <div class="pagination center">
        <?php echo ($page); ?>
    </div>
</div>
<footer class="page-footer pt-none">
    <div class="container">
        <div class="row mb-none">
            <div class="col l6 s12">
                <h5 class="white-text">ByBlog</h5>
                <p class="grey-text text-lighten-4">业余开发，三流程序员。。。</p>
                <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1259994232'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1259994232%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
            </div>
            <div class="col l3 offset-l3 s12">
                <h5 class="white-text">链接</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="http://www.thinkphp.cn/">ThinkPHP</a></li>
                    <li><a class="grey-text text-lighten-3" href="http://www.materialscss.com/">Materialize</a></li>
                    <li><a class="grey-text text-lighten-3" href="<?php echo U('/Admin/Login/index');?>">进入后台</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © 2016 - 2099 Copyright ByBlog
            <a class="grey-text text-lighten-4 right">基于ThinkPHP V<?php echo (THINK_VERSION); ?></a>
        </div>
    </div>
</footer>

<script src="/byblog/Public/Js/Jquery/jquery-2.2.3.js"></script>

<script src="/byblog/Public/Js/materialize.min.js"></script>
<script src="/byblog/Public/Js/byjs.js"></script>
<script>
    // 百度自动推送
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();

</script>

</body>
</html>