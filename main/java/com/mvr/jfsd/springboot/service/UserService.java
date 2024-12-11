package com.mvr.jfsd.springboot.service;

import com.mvr.jfsd.springboot.model.User;

public interface UserService 
{
	public String userRegistration(User user);
	public User checkUserLogin(String email,String password);
}
