package com.mvr.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mvr.jfsd.springboot.model.Forum;

@Repository
public interface ForumRepository extends JpaRepository<Forum, Integer> {

}
