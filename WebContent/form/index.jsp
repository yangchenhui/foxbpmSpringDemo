<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ych人事管理系统</title>
<link rel="stylesheet" type="text/css" href="${ctx}/style.css" />
<!-- jQuery file -->
<script src="${ctx}/js/jquery.min.js"></script>
<script src="${ctx}/js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
var $ = jQuery.noConflict();
$(function() {
$('#tabsmenu').tabify();
$(".toggle_container").hide(); 
$(".trigger").click(function(){
	$(this).toggleClass("active").next().slideToggle("slow");
	return false;
});
});


$(document).ready(function(){
	$("a[name=add_leave]").click(function(){
		$("#contentIframe").attr("src","${ctx}/form/leave_add.jsp");
	});
	
	$("a[name=list_leave]").click(function(){
		$("#contentIframe").attr("src","${ctx}/leaveList.action");
	});
});
</script>
</head>
<body>
<div id="panelwrap">
  	
	<div class="header">
    <div class="title"><a href="#">Foxbpm集成示例：人事管理系统</a></div>
    
    <div class="header_right">Welcome Admin, <a href="#" class="settings">Settings</a> <a href="#" class="logout">Logout</a> </div>
    
    <div class="menu">
    <ul>
    <li><a href="#" class="selected">请假系统</a></li>
    <li><a href="#">我的FoxBPM</a></li>
    <li><a href="#">管理控制台</a></li>
    <li><a href="#">消息中心</a></li>
    <li><a href="#">Help</a></li>
    </ul>
    </div>
    
    </div>
    
    <div class="submenu">
    <ul>
    <li><a href="#" class="selected" id="add_leave" name="add_leave">请假申请</a></li>
    <li><a href="#" name="list_leave">请假查询</a></li>
	<li><a href="#">请假审批</a></li>
    </ul>
    </div>          
                    
    <div class="center_content">  
   <div id="right_wrap">
    <div id="right_content">             
         <iframe src="../leaveList.action" id="contentIframe" style="width:100%;height:600px; border:0px;"></iframe>
     </div>
     </div><!-- end of right content-->           
    <div class="sidebar" id="sidebar">
    <h2>请假系统</h2>
    
        <ul>
            <li><a href="#" name="add_leave">请假申请</a></li>
			<li><a href="#" name="list_leave">请假查询</a></li>
            <li><a href="#">请假审批</a></li>
          
        </ul> 
   <h2>我的Foxbpm</h2>

	<ul>
		<li><a href="#" class="selected">我的待办</a></li>
		<li><a href="#">流程追踪</a></li>
	</ul>  
    <h2>管理控制台</h2>
    
        <ul>
            <li><a href="#">流程定义管理</a></li>
            <li><a href="#">流程实例管理</a></li>
            <li><a href="#">任务管理</a></li>
            <li><a href="#">web设计器</a></li>
        </ul>   
         
    <h2>消息中心</h2> 
    <div class="sidebar_section_text">
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    </div>         
    
    </div>             
    
    
    <div class="clear"></div>
    </div> <!--end of center_content-->
    
    <div class="footer">
Panelo - Free Admin Collect from <a href="http://www.mycodes.net/" title="网站模板" target="_blank">网站模板</a>
</div>

</div>

    	
</body>
</html>