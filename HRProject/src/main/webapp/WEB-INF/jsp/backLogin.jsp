<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<%
	String path=request.getContextPath();//douban
	String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>后台登录</title>
<!--第一步：引入图标的css文件  themes/icon.css 和icons文件夹-->
<link type="text/css" rel="stylesheet" href="css/icon.css"/>
<!--第二步：引入easyui皮肤样式 themes/default/easyui.css 和images文件夹-->
<link type="text/css" rel="stylesheet" href="css/easyui.css"/>
<style>
*{
	padding:0;
	margin:0 auto;
}
.box{
	width:400px;
	height:300px;
	margin-top:100px;
	margin-left:500px;
}
ul,li{
	list-style:none;
}
a{
	text-decoration:none;
}

ul{
	width:400px;
	height:150px;
	margin-top:60px;
}
ul li{
	width:400px;
	height:30px;
	line-height:30px;
	margin-bottom:30px;
	text-align:center;
	font-size:14px;
}
</style>
</head>
<body>
	<div class='box'>
		<form id="back_login" method="post" style="width:500px;height:450px;">
		<input type="hidden" name="op" value="login"/>
   		<div class="easyui-panel" title="用户登录" data-options="fit:true">
            <ul>
                <li>
                    <label for="user">用户名：</label>
                    <input class="easyui-validatebox" data-options="required:true" name="username" placeholder="请输入用户名..."/>
                </li>
                <li>
                    <label for="pwd">密&nbsp;&nbsp;码：</label>
                    <input class="easyui-validatebox" type="password" data-options="required:true" name="userpwd" placeholder="请输入密码..."/>
                </li>
              <li>
              		 <label for="pwd">部&nbsp;&nbsp;门：</label>
                     <form:select   />
			 </li>
			 <li>
					 <label for="pwd">职&nbsp;&nbsp;位：</label>
                     <form:select   />
                    
                </li>
                <li>
                    <a class="easyui-linkbutton submit" style="width:50px;height:30px;" data-options="toggle:true">登录</a>
                </li>
            </ul>
		</div>
		</form>
    </div>
</body>

<!--第三步：引入jquery代码 必须在easyui之前-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!--第四步：引入easyui-->
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<!--第五步：引入语言包 支持中文-->
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>



</html>
