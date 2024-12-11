package com.mvr.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvr.jfsd.springboot.model.User;
import com.mvr.jfsd.springboot.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService
{
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public String userRegistration(User user) 
	{
		userRepository.save(user);
		return "User Registered Successfully";
	}

	@Override
	public User checkUserLogin(String email, String password) 
	{
		return userRepository.checkUserLogin(email, password);
	}

}
