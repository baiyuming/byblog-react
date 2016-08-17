<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <title><?php echo ($data["a_title"]); ?> - ByBlog </title>
    <meta name="keywords" content="<?php echo ($data["a_keyword"]); ?>" />
    <meta name="description" content="<?php echo ($data["a_remark"]); ?>" />
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
    <link href="/byblog/Public/Plugin/highlight/androidstudio.css" rel="stylesheet"/>
    <script src="/byblog/Public/Plugin/highlight/highlight.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
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

<div class="container pt-xlg">
    <div class="row">
        <div class="col s12 m8 l9">
            <p class="f-36 mb-none"><?php echo ($data["a_title"]); ?></p>
            <p class="c-999">20<?php echo (date("y/m/d H:i",$data["a_time"])); ?>发表</p>
            <hr>
            <p id="contentMd" style="display: none"><?php echo ($data["a_content"]); ?></p>
            <div id="content">
            </div>
            <p class="f-18">分享到：</p>
            <div class="bdsharebuttonbox">
                <a href="#" class="bds_more" data-cmd="more"></a>
                <a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a>
                <a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a>
                <a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a>
                <a title="分享到QQ好友" href="#" class="bds_sqq" data-cmd="sqq"></a>
                <a title="分享到Facebook" href="#" class="bds_fbook" data-cmd="fbook"></a>
                <a title="分享到linkedin" href="#" class="bds_linkedin" data-cmd="linkedin"></a>
                <a title="分享到Twitter" href="#" class="bds_twi" data-cmd="twi"></a>
            </div>
            <!-- 多说评论框 start -->
            <div class="ds-thread" data-thread-key="<?php echo ($data["a_id"]); ?>" data-title="<?php echo ($data["a_title"]); ?>" data-url="<?php echo U('Home/Content/content/id/'.$vo['a_id']);?>"></div>
            <!-- 多说评论框 end -->
        </div>
        <div class="col s12 m4 l3">
            22222222
        </div>
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

<script src="/byblog/Public/MarkdownEditor/WebMarked/marked.js"></script>
<script>
    document.getElementById('content').innerHTML =
            marked(document.getElementById('contentMd').innerText);
    // 百度分享
    window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":["renren","douban","youdao","evernotecn","mshare"],"bdPic":"","bdStyle":"1","bdSize":"32"},
        "share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
    <!-- 多说公共JS代码 start (一个网页只需插入一次) -->
    var duoshuoQuery = {short_name:"weberpub"};
    (function() {
        var ds = document.createElement('script');
        ds.type = 'text/javascript';ds.async = true;
        ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
        ds.charset = 'UTF-8';
        (document.getElementsByTagName('head')[0]
        || document.getElementsByTagName('body')[0]).appendChild(ds);
    })();
<!-- 多说公共JS代码 end -->
</script>
</body>
</html>