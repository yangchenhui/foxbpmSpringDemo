<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Panelo - Free Admin Template</title>
<link rel="stylesheet" type="text/css" href="${ctx}/style.css" />

<style>
h2{ background-color:#bad7e6;
	margin:0px; clear:both;
	-moz-border-radius-topleft:6px;-webkit-border-top-left-radius:6px;-khtml-border-top-left-radius:6px;border-top-left-radius:6px;
	-moz-border-radius-topright:6px;-webkit-border-top-right-radius:6px;-khtml-border-top-right-radius:6px;border-top-right-radius:6px;
	color:#22425e; font-size:14px; font-weight:bold; padding:10px 0 10px 15px; text-shadow:1px 1px #DCEEF7;
	border-bottom:1px #ABC7D6 solid;
}

.tableNo{
   table-layout:fixed;
}
.tdReason{
   white-space:nowrap;
   overflow:hidden;
   text-overflow:ellipsis;
}
</style>
</head>
<body style="background-color:#ffffff;">
 <h2>请假信息查看</h2> 
    <div class="center_content">  
  <div id="right_wrap">              
                    
		<table id="rounded-corner" class="tableNo">
			<thead>
				<tr>
					<th style="width:5%"></th>
					<th style="width:10%">请假人</th>
					<th style="width:15%">开始时间</th>
					<th style="width:10%">请假天数</th>
					<th style="width:10%">请假类型</th>
					<th style="width:38%">请假事由</th>
					<th style="width:6%">修改</th>
					<th style="width:6%">删除</th>
				</tr>
			</thead>
				<tfoot>
				<tr>
					<td colspan="12">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</td>
				</tr>
			</tfoot>
			<tbody>
			<c:forEach items="${dataList}" var="leave">
			
				<tr class="odd">
					<td><input type="checkbox" name="" /></td>
					<td>${leave.leave_person }</td>
					<td>${leave.leave_begin }</td>
					<td>${leave.leave_days }</td>
					<td>${leave.leave_type }</td>
					<td class="tdReason">${leave.leave_reason }</td>
					<td><a href="#"><img src="${ctx}/images/edit.png" alt="" title="" border="0" /></a></td>
					<td><a href="#"><img src="${ctx}/images/trash.gif" alt="" title="" border="0" /></a></td>
				</tr>
			</c:forEach>
				
			</tbody>
		</table>

		<div class="form_sub_buttons">
		<a href="#" class="button red">删除选中</a>
		</div>
    </div>
</div>	
</body>
</html>