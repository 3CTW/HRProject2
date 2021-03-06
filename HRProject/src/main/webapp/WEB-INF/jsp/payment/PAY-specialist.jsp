<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>人力资源管理</title>
<!--第一步：引入图标的css文件  themes/icon.css 和icons文件夹-->
<link type="text/css" rel="stylesheet" href="css/icon.css"/>
<!--第二步：引入easyui皮肤样式 themes/default/easyui.css 和images文件夹-->
<link type="text/css" rel="stylesheet" href="css/easyui.css"/>
<style>

ul,li{
	list-style:none;
	padding:0px;
}
li{
	width:192px;
	height:30px;
}
a{
	text-decoration:none;
}
 #head_panel{
 	font-size:80px;
 	color: #FFF;
 	position:relative;
 	left:400px;
 	top:60px;
 	background:#9CF;
 	font-family:"华文行楷";
 }

</style>
</head>

<body class="easyui-layout" data-options="fit:true">

	<div data-options="region:'north'" style="height:220px;background:#9CF;">
    	<div id="head_panel" class="easyui-panel" data-options="fit:true,border:false"> 3CWT - 薪 酬 管 理 中 心</div>
    </div>
    <div data-options="region:'west',title:'目录'" style="width:200px;">
    	<ul class="menu">
        	<li><a class="easyui-linkbutton" href="PAY-standard-reg.html" data-options="fit:true,plain:true">薪酬标准登记</a></li>
            <li><a class="easyui-linkbutton" href="PAY-standard-query.html" data-options="fit:true,plain:true">薪酬标准查询</a></li>
            <li><a class="easyui-linkbutton" href="PAY-grant-reg.html" data-options="fit:true,plain:true">薪酬发放登记</a></li>
            <li><a class="easyui-linkbutton" href="PAY-grant-query.html" data-options="fit:true,plain:true">薪酬发放查询</a></li>
        </ul>
    </div>
    <div data-options="region:'center'">
    	<div id="main_panel" class="easyui-panel" data-options="fit:true,title:'管理界面',border:false"></div>
    </div>

</body>

<!--第三步：引入jquery代码 必须在easyui之前-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!--第四步：引入easyui-->
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<!--第五步：引入语言包 支持中文-->
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
<script>
//linkbutton添加点击事件
$('.menu>li>a').click(function(){
	var href=$(this).attr('href');
	$('#main_panel').panel('refresh',href);
	return false;	
});
</script>
</html>
    