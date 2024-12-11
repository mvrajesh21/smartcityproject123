package com.mvr.jfsd.springboot.service;

import java.util.List;

import com.mvr.jfsd.springboot.model.Admin;
import com.mvr.jfsd.springboot.model.User;

public interface AdminService 
{
	public List<User> viewAllUsers();
	public Admin checkAdminLogin(String uname,String pwd);
	public long usercount();
}
