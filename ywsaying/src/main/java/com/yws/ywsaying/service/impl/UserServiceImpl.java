package com.yws.ywsaying.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yws.ywsaying.dao.LogDao;
import com.yws.ywsaying.dao.UserDao;
import com.yws.ywsaying.dto.Log;
import com.yws.ywsaying.dto.User;
import com.yws.ywsaying.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	@Autowired
	LogDao logDao;
	
	@Override
	@Transactional
	public List<User> getUsers(Integer start) {
		List<User> list = userDao.selectAll(start, UserService.LIMIT);
		return list;
	}

	@Override
	@Transactional
	public int deleteUser(Long idx, String ip) {
		int deleteCount = userDao.deleteByIdx(idx);
		Log log = new Log();
		log.setLog_ip(ip);
		log.setLog_method("deleteUser");
		log.setLog_regtime(new Date());
		logDao.insert(log);
		return 0;
	}

	@Override
	@Transactional(readOnly=false)
	public User addUser(User user, String ip) {
		user.setUser_regtime(new Date());
		Long user_idx = userDao.insert(user);
		user.setUser_idx(user_idx);
		
		Log log = new Log();
		log.setLog_ip(ip);
		log.setLog_method("addUser");
		log.setLog_regtime(new Date());
		logDao.insert(log);
		return null;
	}

	@Override
	public int getCount() {		
		return userDao.selectCount();
	}

}
