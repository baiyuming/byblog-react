<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <title>11</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">

<link href="/byblog/Public/Css/materialize.css" rel="stylesheet">
<link href="/byblog/Public/Css/basic.css" rel="stylesheet">
<link href="/byblog/Public/Css/bycss.css" rel="stylesheet">
<link href="//at.alicdn.com/t/font_1469156589_2439735.css" rel="stylesheet">
</head>
<body>
<nav>
    <div class="container nav-wrapper">
        <a href="#!" class="brand-logo">Logo</a>
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="by bym-liebiao1"></i></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="badges">标签</a></li>
            <li><a href="buttons">按钮</a></li>
            <li><a href="footer">页脚</a></li>
            <li><a href="mobile">手机</a></li>
        </ul>
        <ul class="side-nav" id="mobile-demo">
            <li><a href="badges">标签</a></li>
            <li><a href="buttons">按钮</a></li>
            <li><a href="footer">页脚</a></li>
            <li><a href="mobile">手机</a></li>
        </ul>
    </div>
</nav>
<div id="content" class="container">
    <div class="row">
        <div class="col s12">
            <table class="hoverable">
                <thead>
                <tr>
                    <th data-field="id">文章标题</th>
                    <th data-field="price">操作</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Alvin</td>
                        <td>Eclair</td>
                    </tr>
                    <tr>
                        <td>Alan</td>
                        <td>Jellybean</td>
                    </tr>
                    <tr>
                        <td>Jonathan</td>
                        <td>Lollipop</td>
                    </tr>
                    <tr>
                        <td>Shannon</td>
                        <td>KitKat</td>
                    </tr>
                </tbody>
            </table>
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