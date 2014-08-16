package com.ych.leave.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.ych.leave.model.LeaveModel;

/**
 * 请假信息实体持久化
 * @author ych
 *
 */
@Transactional(readOnly = false)
@Component
public class LeaveDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	public void saveLeave(LeaveModel leave){
		String insertSql = "insert into oa_leave(id,leave_person,leave_begin,leave_days,leave_type,leave_reason) values(?,?,?,?,?,?)";
		List<Object> args = new ArrayList<Object>();
		args.add(leave.getId());
		args.add(leave.getPerson());
		args.add(leave.getBeginDate());
		args.add(leave.getDays());
		args.add(leave.getType());
		args.add(leave.getReason());
		jdbcTemplate.update(insertSql, args.toArray());
	}
	
	public Map<String,Object> findById(String id){
		String selectSql = "select * from oa_leave where id = ?";
		return this.jdbcTemplate.queryForList(selectSql,id).get(0);
	}
	
	public List<Map<String,Object>> findAll(int pageIndex,int pageSize){
		String selectSql = "select * from oa_leave";
		return this.jdbcTemplate.queryForList(selectSql);
	}
}
