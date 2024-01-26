package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.User;

public interface UserService {

	public User saveUser(User user);

	public void removeSessionMessage();
	 List<User> getUsers();
}