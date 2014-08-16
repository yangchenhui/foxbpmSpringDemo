package com.ych.leave.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ych.leave.model.LeaveModel;
import com.ych.leave.service.LeaveService;

@Controller
public class LeaveController {

	@Autowired
	private LeaveService leaveService;
	@RequestMapping(value = "/saveleave", method = { RequestMethod.GET, RequestMethod.POST })
	public String saveLeave(LeaveModel leave,HttpSession session){
		leaveService.saveLeave(leave);
		return "redirect:/form/leaveList";
	}
	
	@RequestMapping(value = "/leaveList", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView selectAllLeave(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/form/leave_list");
		List<Map<String,Object>> resultList = leaveService.findAllLeave(1,10);
		modelAndView.addObject("dataList", resultList);
		return modelAndView;
	}
}
