<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <title>添加牛人博客地址 -- ByBlog </title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="bym" />

<link href="/byblog/Public/Css/materialize.css" rel="stylesheet">
<link href="/byblog/Public/Css/basic.css" rel="stylesheet">
<link href="/byblog/Public/Css/admin_css.css" rel="stylesheet">
<link href="//at.alicdn.com/t/font_1469792838_3249419.css" rel="stylesheet">
</head>
<body>
<nav>
    <div class="container nav-wrapper">
        <a href="#!" class="brand-logo">Logo</a>
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="by bym-liebiao1"></i></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="<?php echo U('Admin/Blog/add');?>">写文章</a></li>
            <li><a href="<?php echo U('Admin/Blog/listA');?>">文章列表</a></li>
            <li><a href="<?php echo U('Admin/Newbee/addNewbee');?>">牛人博客</a></li>
        </ul>
        <ul class="side-nav" id="mobile-demo">
            <li><a href="<?php echo U('Admin/Blog/add');?>">写文章</a></li>
            <li><a href="<?php echo U('Admin/Blog/listA');?>">文章列表</a></li>
            <li><a href="<?php echo U('Admin/Newbee/addNewbee');?>">牛人博客</a></li>
        </ul>
    </div>
</nav>
<div id="content" class="container newbee">
    <div class="row">
        <form class="col s6" method="post" action="/byblog/index.php/Admin/Newbee/insertNewbee">
            <p class="f-24">添加博客</p>
            <div class="row">
                <div class="input-field col s12">
                    <input id="n_name" name="n_name" type="text" class="validate">
                    <label for="n_name">姓名</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <textarea name="n_remark" id="n_remark" class="materialize-textarea"></textarea>
                    <label for="n_remark">简介</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="n_url" name="n_url" type="text" class="validate">
                    <label for="n_url">博客地址</label>
                </div>
            </div>
            <div class="right-align">
                <button class="btn waves-effect waves-light" type="submit" name="action">添加地址
                    <i class="by bym-feiji right"></i>
                </button>
            </div>
        </form>
        <div class="col s6 pl-60">
            <p class="f-24">列表展示（按添加先后排序）</p>
            <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col s8 p-none">
                    <a href="<?php echo ($vo["n_url"]); ?>">
                        <?php echo ($vo["n_name"]); ?>的博客
                        <span class="f-12 c-999">20<?php echo (date("y/m/d",$vo["n_time"])); ?>添加</span>
                    </a>
                </div>
                <div class="col s4 right-align">
                    <a class="waves-effect waves-light mr-lg">
                        <i class="by bym-bianji"></i></a>
                    <a class="waves-effect waves-light">
                        <i class="by bym-icon54"></i>
                    </a>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
    </div>
</div>
<footer class="page-footer pt-none">
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
</body>
</html>