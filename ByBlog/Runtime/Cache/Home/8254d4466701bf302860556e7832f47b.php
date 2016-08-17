<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <title>前端牛人博客地址 -- ByBlog </title>
    <meta name="keywords" content="ByBlog,markdown,thinkphp,前端博客,前端牛人" />
    <meta name="description" content="ByBlog,markdown,thinkphp,博客系统,前端博客" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="bym" />

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

<div class="container newbee">
    <div class="row">
        <div class="col s9">
            <blockquote>
                <p class="f-16">这里都是个人收藏的一些前端大牛的博客地址，排名是按照添加的顺序。。。有空多去看看他们的博客，
                    可以让我们的视野更加宽广，学习到更多的东西。。。。</p>
            </blockquote>
            <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="b-b">
                    <p class="f-24 mb-none">
                        <a href="<?php echo ($vo["n_url"]); ?>" target="_blank">
                            <?php echo ($vo["n_name"]); ?>的博客
                        </a>
                        <span class="c-aaa f-12">20<?php echo (date("y/m/d",$vo["n_time"])); ?> 添加</span>
                    </p>
                    <p class="c-777 f-14">简介：<?php echo ($vo["n_remark"]); ?></p>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
        <div class="col s3 pl-60">
            222222222222222
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

</body>
</html>