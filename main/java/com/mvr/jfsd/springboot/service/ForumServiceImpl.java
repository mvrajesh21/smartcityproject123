package com.mvr.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.mvr.jfsd.springboot.model.Forum;
import com.mvr.jfsd.springboot.repository.ForumRepository;

public class ForumServiceImpl 
{
	@Autowired
    private ForumRepository forumRepository;

    // Method to add a new forum
    public Forum addForum(Forum forum) {
        return forumRepository.save(forum);
    }
    
    public List<Forum> displayall(){
    	return forumRepository.findAll();
    }
}
