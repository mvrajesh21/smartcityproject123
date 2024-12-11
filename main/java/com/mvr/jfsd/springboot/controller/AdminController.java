package com.mvr.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mvr.jfsd.springboot.model.Admin;
import com.mvr.jfsd.springboot.model.User;
import com.mvr.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	@GetMapping("Adminlogin")
	public ModelAndView Adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Adminlogin");
		return mv;
	}
	
	@GetMapping("Adminhome")
	public ModelAndView Adminhome()
	{
		ModelAndView mv = new ModelAndView("Adminhome");
		
		long count =  adminService.usercount();
		mv.addObject("count", count);
		
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		
		if(admin != null)
		{
			mv.setViewName("Adminhome"); //Login Success
			long count =  adminService.usercount();
			mv.addObject("count", count);
		}
		else
		{
			mv.setViewName("Adminlogin");
			mv.addObject("message", "Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("viewallusers")
	public ModelAndView viewallusers()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallusers");
		
		List<User> users = adminService.viewAllUsers();
		mv.addObject("userlist", users);
		
		long count =  adminService.usercount();
		mv.addObject("count", count);
		
		return mv;
	}
	
	
}
