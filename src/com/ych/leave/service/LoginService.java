package com.ych.leave.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public boolean valifyUser(String userName ,String password){
		String sql = "select * from au_userinfo where userid = ? and password = ?";
		List<Map<String,Object>> userList = jdbcTemplate.queryForList(sql, userName,password);
		if(userList.size() >0){
			return true;
		}
		return false;
	}
	
}
