<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Panelo - Free Admin Template</title>
<link rel="stylesheet" type="text/css" href="../style.css" />
<!-- jQuery file -->
<script src="../js/jquery.min.js"></script>
<script src="../js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
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
</script>
</head>
<body style="background-color:#ffffff;">
        <a href="#tab1">请假信息填写</a>
<form  action="../saveleave.action" method="post">
    <div id="tab1" class="tabcontent">
        <div class="form">
            <div class="form_row">
            <label>请假人:</label>
            <input type="text" class="form_input" name="person" />
            </div>
             
            <div class="form_row">
            <label>开始时间:</label>
            <input type="text" class="form_input" name="beginDate" />
            </div>

			  <div class="form_row">
            <label>开始天数:</label>
            <input type="text" class="form_input" name="days" />
            </div>
            
            <div class="form_row">
            <label>请假类型:</label>
            <select class="form_select" name="type">
				<option value="事假">事假</option>
				<option value="年假">年假</option>
				<option value="病假"> 病假</option>
            </select>
            </div>
            
             <div class="form_row">
            <label>请假事由:</label>
            <textarea class="form_textarea" name="reason"></textarea>
            </div>
            <div class="form_row">
            <input type="submit" class="form_submit" value="提交" />
            </div> 
            <div class="clear"></div>
        </div>
    </div>
</form>
</body>
</html>