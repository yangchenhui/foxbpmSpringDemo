package com.ych.leave.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ych.leave.dao.LeaveDao;
import com.ych.leave.model.LeaveModel;

@Component
public class LeaveService {

	@Autowired
	private LeaveDao leaveDao;
	public void saveLeave(LeaveModel leave){
		DateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		if(leave.getId() == null || leave.getId().equals("")){
			leave.setId(df.format(new Date()));
		}
		leaveDao.saveLeave(leave);
	}
	
	public List<Map<String,Object>> findAllLeave(int pageIndex,int pageSize){
		return leaveDao.findAll(pageIndex, pageSize);
	}
}
