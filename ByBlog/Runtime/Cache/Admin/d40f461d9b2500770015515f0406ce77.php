<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <title>11</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="bym" />

<link href="/byblog/Public/Css/materialize.css" rel="stylesheet">
<link href="/byblog/Public/Css/basic.css" rel="stylesheet">
<link href="/byblog/Public/Css/admin_css.css" rel="stylesheet">
<link href="//at.alicdn.com/t/font_1469792838_3249419.css" rel="stylesheet">
    <link rel="stylesheet" href="/byblog/Public/MarkdownEditor/editor.css" />
    <script type="text/javascript" src="/byblog/Public/MarkdownEditor/editor.js"></script>
    <script type="text/javascript" src="/byblog/Public/MarkdownEditor/marked.js"></script>
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
<div id="content" class="container">
    <form class="col s12 pt-60" method="post" action="/byblog/index.php/Admin/Blog/update">
        <input type="hidden" name="a_id" value="<?php echo ($data["a_id"]); ?>">
        <div class="row">
            <div class="col s9">
                <div class="row">
                    <div class="input-field col s12">
                        <input id="title" name="a_title" type="text" class="validate" value="<?php echo ($data["a_title"]); ?>">
                        <label for="title">文章标题</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="remark" name="a_remark" type="text" class="validate" value="<?php echo ($data["a_remark"]); ?>">
                        <label for="remark">文章描述</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <p class="f-16 c-999">文章内容</p>
                        <textarea name="a_content" id="textarea" class="materialize-textarea"><?php echo ($data["a_content"]); ?></textarea>
                    </div>
                </div>
            </div>
            <div class="col s3">
                <div class="row">
                    <div class="input-field col s12">
                        <input id="keyword" name="a_keyword" type="text" class="validate" value="<?php echo ($data["a_keyword"]); ?>">
                        <label for="keyword">标签（关键字）</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="a_time" name="a_time" type="text" class="validate" value="20<?php echo (date('y/m/d H:i',$data["a_time"])); ?>">
                        <label for="a_time">时间</label>
                    </div>
                </div>
                <button class="btn waves-effect waves-light" type="submit" name="action">更新文章
                    <i class="by bym-feiji right"></i>
                </button>
            </div>
        </div>
    </form>
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
<script>
    var editor = new Editor();
    editor.render();
</script>
</body>
</html>