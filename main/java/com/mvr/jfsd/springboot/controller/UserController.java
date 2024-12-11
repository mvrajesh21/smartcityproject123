package com.mvr.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mvr.jfsd.springboot.model.User;
import com.mvr.jfsd.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController 
{
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public ModelAndView HomePage()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Home");
		return mv;
	}
	
	@GetMapping("Register")
	public ModelAndView Register()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Register");
		return mv;
	}
	
	@GetMapping("/userhome")
	public ModelAndView userhome() 
	{
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("userhome");
	    return mv;
	}

	
	
	
	@GetMapping("userprofile")
	public ModelAndView userprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userprofile");
		return mv;
	}
	
	@GetMapping("Login")
	public ModelAndView Login()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Login");
		return mv;
	}
	
	@PostMapping("insertuser")
	public ModelAndView insertuser(HttpServletRequest request)
	{
			//take the data from HTML to middle
		String name = request.getParameter("uusername");
		String gender = request.getParameter("ugender");
		String role = request.getParameter("uuserRole");
		String dob = request.getParameter("udob");
		String email = request.getParameter("uemail");
		String contact = request.getParameter("umobile");
		String password = request.getParameter("upwd");
		String location = request.getParameter("ulocation");
		String pincode = request.getParameter("uzipCode");
		String securityques = request.getParameter("usecurityQuestion");
		String securityans = request.getParameter("uSecurityAnswer");
		
		User user = new User();
		user.setName(name);
		user.setGender(gender);
		user.setRole(role);
		user.setDateofbirth(dob);
		user.setEmail(email);
		user.setContact(contact);
		user.setPassword(password);
		user.setLocation(location);
		user.setZipCode(pincode);
		user.setSecurityQuestion(securityques);
		user.setSecurityAnswer(securityans);
		
		String message = userService.userRegistration(user);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Login");
		mv.addObject("message",message);
		
		return mv;
	}
	
	@PostMapping("checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    
	    String uemail = request.getParameter("uemail");
	    String upwd = request.getParameter("upwd");
	    
	    User user = userService.checkUserLogin(uemail, upwd);
	    
	    if (user != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("user", user); 
	        
	        mv.setViewName("userhome");
	    } else {
	        mv.setViewName("Login");
	        mv.addObject("message", "Login Failed");
	    }
	    
	    return mv;
	}


	
	@GetMapping("userlogout")
	public ModelAndView userlogout()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Login");
		return mv;
	}
}