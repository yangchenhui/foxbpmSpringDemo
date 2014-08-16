<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人事系统登录</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<form action="login.action">
<div id="loginpanelwrap">
	<div class="loginheader">
    <div class="logintitle"><a href="#">Panelo Admin</a></div>
    </div>
    <div class="loginform">
        
        <div class="loginform_row">
        <label>Username:</label>
        <input type="text" class="loginform_input" name="userName" />
        </div>
        <div class="loginform_row">
        <label>Password:</label>
        <input type="text" class="loginform_input" name="password" />
        </div>
        <div class="loginform_row">
        <input type="submit" class="loginform_submit" value="Login" />
        </div> 
        <div class="clear"></div>
    </div>
</div>
</form>
</body>
</html>