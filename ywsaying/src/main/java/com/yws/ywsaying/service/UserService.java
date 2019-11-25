package com.yws.ywsaying.service;

import java.util.List;

import com.yws.ywsaying.dto.User;

public interface UserService {

	public static final Integer LIMIT = 5;
	public List<User> getUsers(Integer start);
	public int deleteUser(Long idx, String ip);
	public User addUser(User user, String ip);
	public int getCount();
}
