<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	P{
		color:#00F;
	}
	th{
		height:20px;
		width:100px;
	}
	#button{
		margin-left:300px;
	}
</style>	
    <p>您正在做的业务是：人力资源--薪酬标准管理--薪酬发放详细登记</p>
    </br>
	登记人：<input type="text" value=""/> 登记时间：
<table id="tt" style="width:800px;height:60px" border="1" bordercolor="#0099FF"
			title="DataGrid - CardView" singleSelect="true" fitColumns="true" remoteSort="false"
			url="datagrid8_getdata.php" pagination="true" sortOrder="desc" sortName="itemid">
		<thead>
			<tr>
           		<th field="序号"  sortable="true">序号</th>
                <th field="档案编号"  sortable="true">档案编号</th>
                <th field="姓名"  sortable="true">姓名</th>
                <th field="基本工资"  sortable="true">基本工资</th>
                <th field="交通补贴"  sortable="true">交通补贴</th>
                <th field="通讯补贴"  sortable="true">通讯补贴</th>
                <th field="浮动工资"  sortable="true">浮动工资</th>
                <th field="常规"  sortable="true">常规</th>
                <th field="午餐补贴"  sortable="true">午餐补偿</th>
                <th field="交通补助"  sortable="true">交通补助</th>
                <th field="车补"  sortable="true">车补</th>
                <th field="奖励金额"  sortable="true">奖励金额</th>
                <th field="销售绩效金额"  sortable="true">销售绩效金额</th>
                <th field="应扣金额"  sortable="true">应扣金额</th>
			</tr><tr>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
                <th><input type="text" style="width:100px;" value=""/></th>
			</tr>
		</thead>
	</table>
    <div id="button">
    <input  type="button" value="提交" />
    <input  type="button" value="清除"/>
    </div>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
<script type="text/javascript" src="js/jquery.min.js"></script>
<!--第四步：引入easyui-->
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<!--第五步：引入语言包 支持中文-->
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
<script>
//linkbutton添加点击事件
$('.menu>li>a').click(function(){
	var href=PAY-grant-reg.html;
	$('tt').panel('refresh',href);
	return false;	
});
    