<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <title>登录页面</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">

<link href="/byblog/Public/Css/materialize.css" rel="stylesheet">
<link href="/byblog/Public/Css/basic.css" rel="stylesheet">
<link href="/byblog/Public/Css/bycss.css" rel="stylesheet">
<link href="//at.alicdn.com/t/font_1469156589_2439735.css" rel="stylesheet">
</head>
<body>
<div id="content" class="container">
    <div class="row center-align">
        <form class="col offset-s3 s6" action="/byblog/index.php/Admin/Login/lll" method="post">
            <div class="row">
                <div class="input-field col s12">
                    <input id="username" name="username" type="text" class="validate">
                    <label for="username">用户名</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="password" name="password" type="password" class="validate">
                    <label for="password">密码</label>
                </div>
            </div>
            <div class="col s12 p-none">
                <button class="btn waves-effect waves-light right" type="submit" name="action">登录
                    <i class="by bym-feiji right"></i></button>
            </div>
        </form>
    </div>
</div>

<script src="/byblog/Public/Js/Jquery/jquery-2.2.3.js"></script>

<script src="/byblog/Public/Js/materialize.min.js"></script>
<script src="/byblog/Public/Js/byjs.js"></script>
<script>
    var mt = document.body.clientHeight;
    $('form').css("margin-top",mt);
</script>
</body>
</html>