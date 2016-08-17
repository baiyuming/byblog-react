<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <title>文章列表页 -- ByBlog</title>
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
<div id="content" class="container by-lista">
    <div class="row pt-xlg">
        <div class="col s12">
            <table class="hoverable">
                <thead>
                <tr>
                    <th data-field="id" class="f-20">文章标题</th>
                    <th data-field="id" class="f-20">操作</th>
                </tr>
                </thead>
                <tbody>
                    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                            <td class="f-18" width="75%"><?php echo ($vo["a_title"]); ?> <span class="f-12 c-999">20<?php echo (date("y/m/d H:i",$vo["a_time"])); ?></span></td>
                            <td width="25%">
                                <a href="<?php echo U('Admin/Blog/edit/id/'.$vo['a_id']);?>" class="waves-effect waves-light btn mr-lg">编辑</a>
                                <a href="#modal<?php echo ($vo["a_id"]); ?>" class="modal-trigger waves-effect waves-light btn">删除</a>
                                <div id="modal<?php echo ($vo["a_id"]); ?>" class="modal">
                                    <div class="modal-content">
                                        <h4>确定删除</h4>
                                        <p><?php echo ($vo["a_title"]); ?> 这篇文章？？？？</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a onclick="$('.modal').closeModal();" class="waves-effect waves-light btn ml-lg ">取消</a>
                                        <a href="<?php echo U('Admin/Blog/del/id/'.$vo['a_id']);?>" class="waves-effect waves-light btn red">确定</a>
                                    </div>
                                </div>
                            </td>
                        </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                </tbody>
            </table>
            <div class="pagination right">
                <?php echo ($page); ?>
            </div>
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
<script>
    $(document).ready(function(){
        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
        $('.modal-trigger').leanModal();
    });
</script>
</body>
</html>