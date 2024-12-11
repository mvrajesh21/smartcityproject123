package com.mvr.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvr.jfsd.springboot.model.Admin;
import com.mvr.jfsd.springboot.model.User;
import com.mvr.jfsd.springboot.repository.AdminRepository;
import com.mvr.jfsd.springboot.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Override
	public List<User> viewAllUsers() 
	{
		return userRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) 
	{
		return adminRepository.checkAdminLogin(uname, pwd);
	}

	@Override
	public long usercount() 
	{
		return userRepository.count();
	}
	
}
