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
    <p>您正在做的业务是：人力资源--薪酬标准管理--薪酬标准查询</p>
    
    <label>请输入薪酬标准编号</label>
	<input type="text" style="width:100px;" value=""/>
	<label>请输入关键字</label>
	<input type="text" style="width:100px;" value=""/>
    <label>请输入登记时间</label>
    <input type="text" style="width:100px;" value=""/>
	<label>至</label>
	<input type="text" style="width:100px;" value=""/>
    <label>(YYYY-MM-DD)</label>
	<input  type="button" value="查询" />
    </br>
	
	<table id="tt" style="width:800px;height:60px" border="1" bordercolor="#0099FF"
			title="DataGrid - CardView" singleSelect="true" fitColumns="true" remoteSort="false"
			url="datagrid8_getdata.php" pagination="true" sortOrder="desc" sortName="itemid">
		<thead>
			<tr>
				<th field="薪酬标准编号"  sortable="true">薪酬标准编号</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="薪酬标准名称"  sortable="true">薪酬标准名称</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="薪酬总额"  sortable="true">薪酬总额</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field=""  sortable="true"></th>
				<th><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="制定人"  sortable="true">制定人</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="登记人"  sortable="true">登记人</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="登记时间"  sortable="true">登记时间</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field=""  sortable="true"></th>
				<th><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="序号"  sortable="true">序号</th>
				<th  colspan="3" field="薪酬项目名称"  sortable="true">薪酬项目名称</th>
				<th  colspan="4" field="金额"  sortable="true">金额</th>
			</tr><tr>
				<th field="序号"  sortable="true">1</th>
				<th  colspan="3" field="薪酬项目名称"  sortable="true">基本工资</th>
				<th colspan="4"><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="序号"  sortable="true">2</th>
				<th  colspan="3" field="薪酬项目名称"  sortable="true">交通补贴</th>
				<th colspan="4"><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="序号"  sortable="true">3</th>
				<th  colspan="3" field="薪酬项目名称"  sortable="true">通讯补贴</th>
				<th colspan="4"><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="序号"  sortable="true">4</th>
				<th  colspan="3" field="薪酬项目名称"  sortable="true">浮动工资</th>
				<th colspan="4"><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="序号"  sortable="true">5</th>
				<th  colspan="3" field="薪酬项目名称"  sortable="true">常规</th>
				<th colspan="4"><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="序号"  sortable="true">6</th>
				<th  colspan="3" field="薪酬项目名称"  sortable="true">午餐补偿</th>
				<th colspan="4"><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="序号"  sortable="true">7</th>
				<th  colspan="3" field="薪酬项目名称"  sortable="true">交通补助</th>
				<th colspan="4"><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="序号"  sortable="true">8</th>
				<th  colspan="3" field="薪酬项目名称"  sortable="true">车补</th>
				<th colspan="4"><input type="text" style="width:100px;" value=""/></th>
			</tr>
            
		</thead>
	</table>
    </div>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    
	
	