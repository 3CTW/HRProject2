<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<%
	String path=request.getContextPath();//douban
	String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
    <p>您正在做的业务是：人力资源--人力资源档案管理--人力资源档案登记</p>
	
	
	<table id="tt" style="width:800px;height:400px" border="1" bordercolor="#0099FF"
			title="DataGrid - CardView" singleSelect="true" fitColumns="true" remoteSort="false"
			url="datagrid8_getdata.php" pagination="true" sortOrder="desc" sortName="itemid">
		<thead>
			<tr>
				<th field="I级机构"  sortable="true">I级机构</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
			
				<th field="II级机构"  sortable="true">II级机构</th>
				 <th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
                <th field="III级机构" sortable="true">III级机构</th>
                <th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
				
               <th colspan="1" rowspan="5" field="status" width="60" sortable="true">pictrue</th>
			</tr>
            <tr>
				<th field="职位分类"  sortable="true">职位分类</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
				<th field="职位名称"  sortable="true">职位名称</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
                <th field="职称" sortable="true">职称</th>
                <th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
			</tr>
            <tr>
				<th field="姓名" sortable="true">姓名</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="性别"  sortable="true">性别</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
                <th field="EMAIL"  sortable="true">EMAIL</th>
                <th colspan="2"><input type="text" style="width:200px;" value=""/></th>
			</tr>
            <tr>
				<th field="电话"  sortable="true">电话</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="QQ"  sortable="true">QQ</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="手机"  sortable="true">手机</th>
                <th colspan="2"><input type="text" style="width:200px;" value=""/></th>
			</tr>
            <tr>
				<th field="住址" width= sortable="true">住址</th>
				<th colspan="3"><input type="text" style="width:300px;" value=""/></th>
                <th field="邮编"  sortable="true">邮编</th>
                <th colspan="2"><input type="text" style="width:200px;" value=""/></th>
			</tr><tr>
				<th field="国籍"  sortable="true">国籍</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
				<th field="出生地"  sortable="true">出生地</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="生日"  sortable="true">生日</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="民族"  sortable="true">民族</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
			</tr><tr>
				<th field="宗教信仰"  sortable="true">宗教信仰</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
				<th field="政治面貌"  sortable="true">政治面貌</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
				<th field="身份证号码"  sortable="true">身份证号码</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="社会保障号码号码"  sortable="true">身份证号码</th>
				<th><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="年龄"  sortable="true">年龄</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="学历"  sortable="true">学历</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
				<th field="教育年限"  sortable="true">教育年限</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="学历专业"  sortable="true">学历专业</th>
				<th><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="薪酬标准"  sortable="true">薪酬标准</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
				<th field="开户行"  sortable="true">开户行</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="账号"  sortable="true">账号</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="登记人"  sortable="true">登记人</th>
				<th><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="建档时间"  sortable="true">建档时间</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="特长"  sortable="true">特长</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
				<th field="爱好"  sortable="true">爱好</th>
				<th><select style="width:100px;" id="config_public_char" name="config_public_char.pbc_id">
				<option value="-1">请选择</option>
				<c:forEach items="${config_public_chars }" var="ca">
				<option value="${ca.pbc_id }">${ca.attribute_name }</option>
				</c:forEach>
				</select></th>
                <th field=""  sortable="true"></th>
                <th field=""  sortable="true"></th>
			</tr>
            <tr>
				<th style="height:60px;" field="个人履历"  sortable="true">个人履历</th>
				<th style="height:60px;"colspan="7"><input type="text" style="width:700px; height:60px;" value=""/></th>
			</tr><tr>
				<th style="height:60px;" field="家庭关系信息"  sortable="true">家庭关系信息</th>
				<th style="height:60px;"colspan="7"><input type="text" style="width:700px; height:60px;" value=""/></th>
			</tr><tr>
				<th style="height:60px;" field="备注"  sortable="true">备注</th>
				<th style="height:60px;" colspan="7"><input type="text" style="width:700px; height:60px;" value=""/></th>
			</tr>
			
			<c:forEach items="${listHR_file_reg}" var="human_file">
		<tr>
			<td>${human_file.huf_id }</td>
			<td>${human_file.human_id }</td>
			<td>${human_file.first_kind_id }</td>
			<td>${human_file.first_kind_name }</td>
			<td>${human_file.second_kind_id }</td>
			<td>${human_file.second_kind_name }</td>
			<td>${human_file.third_kind_id }</td>
			<td>${human_file.third_kind_name }</td>
			<td>${human_file.human_name }</td>
			<td>${human_file.human_address }</td>
			<td>${human_file.human_postcode }</td>
			<td>${human_file.human_pro_designation }</td>
			<td>${human_file.human_major_kind_id }</td>
			<td>${human_file.human_major_kind_name }</td>
			<td>${human_file.human_major_id }</td>
			<td>${human_file.hunma_major_name }</td>
			<td>${human_file.human_telephone }</td>
			<td>${human_file.human_mobilephone }</td>
			<td>${human_file.human_bank }</td>
			<td>${human_file.human_account }</td>
			<td>${human_file.human_qq }</td>
			<td>${human_file.human_email }</td>
			<td>${human_file.human_hobby }</td>
			<td>${human_file.human_speciality }</td>
			<td>${human_file.human_sex }</td>
			<td>${human_file.human_religion }</td>
			<td>${human_file.human_party }</td>
			<td>${human_file.human_nationality }</td>
			<td>${human_file.human_race }</td>
			<td>${human_file.human_birthday }</td>
			<td>${human_file.human_birthplace }</td>
			<td>${human_file.human_age }</td>
			<td>${human_file.human_educated_degree }</td>
			<td>${human_file.human_educated_years }</td>
			<td>${human_file.human_educated_major }</td>
			<td>${human_file.human_society_security_id }</td>
			<td>${human_file.human_id_card }</td>
			<td>${human_file.remark }</td>
			<td>${human_file.salary_standard_id }</td>
			<td>${human_file.salary_standard_name }</td>
			<td>${human_file.salary_sum }</td>
			<td>${human_file.demand_salaray_sum }</td>
			<td>${human_file.paid_salary_sum }</td>
			<td>${human_file.major_change_amount }</td>
			<td>${human_file.bonus_amount }</td>
			<td>${human_file.training_amount }</td>
			<td>${human_file.file_chang_amount }</td>
			<td>${human_file.human_histroy_records }</td>
			<td>${human_file.human_family_membership }</td>
			<td>${human_file.human_picture }</td>
			<td>${human_file.attachment_name }</td>
			<td>${human_file.check_status }</td>
			<td>${human_file.register }</td>
			<td>${human_file.checker }</td>
			<td>${human_file.changer }</td>
			<td>${human_file.regist_time }</td>
			<td>${human_file.check_time }</td>
			<td>${human_file.change_time }</td>
			<td>${human_file.lastly_change_time }</td>
			<td>${human_file.delete_time }</td>
			<td>${human_file.recovery_time }</td>
			<td>${human_file.human_file_status }</td>
			
		</tr>
		</c:forEach>
			
			
		</thead>
	</table>
    <div id="button">
    <a href="tofileRegSubmit"><input id="submit"  type="button" value="提交" /></a>  
    <input  type="button" value="清除"/>
    </div>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
<script>
	$('.submit').click(function(data){
		if("success"==data){
			alert("修改成功");
			$('.tt').datagrid('reload');
		}
	});
</script>
    
	