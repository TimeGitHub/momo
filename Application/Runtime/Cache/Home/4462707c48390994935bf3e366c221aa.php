<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{font-size:12px;}
</style>
</head>
<body>
<span style="color:#F00;"><?php echo ($username); ?></span> 您好，欢迎进入网站后台系统！ 身份：超级管理员 登录次数：<?php echo ($login); ?>次 本次登录时间：<?php echo ($last_login_time); ?>
</body>
</html>