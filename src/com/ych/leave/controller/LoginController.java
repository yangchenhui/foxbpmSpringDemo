package com.ych.leave.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ych.leave.service.LoginService;

@Controller
public class LoginController {

	
	@Autowired
	private LoginService loginService;
	/**
	 * 登陆处理
	 * @param request 请求
	 * @param response 响应
	 * @return 返回
	 */
	@RequestMapping(value = "login.action", method = { RequestMethod.GET, RequestMethod.POST })
	public void login(HttpServletRequest request, HttpServletResponse response){
		try {
			// 从登录的口获取到用户名和密码
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			// 该接口同时也是登出的口，当发现有特殊参数时则做登出操作。
			String logout = request.getParameter("doLogOut");
			String contextPath = request.getContextPath();
			if (!StringUtils.isEmpty(logout)) {
				request.getSession().invalidate();
				response.sendRedirect(contextPath + "/login.jsp");
			} else {
				boolean result = loginService.valifyUser(userName, password);
				if(result){
					response.sendRedirect(contextPath + "/form/index.jsp");
				}else{
					response.setContentType("text/html;charset=utf-8");
					response.getWriter().print("<script>alert('用户名或密码错误！');window.location.href='" + contextPath + "/login.jsp';</script>");
				}
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
