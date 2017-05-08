package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.impl.DaoImpl;
import com.entity.User;
/**
 * 帐号操作逻辑处理
 * @author kone
 * 2017.4.22
 */
@Service
public class AccountService {
	@Autowired
	private DaoImpl daoImpl;
	/**
	 * 保存用户
	 * @param user
	 * @return
	 */
	public boolean save(User user) {
		return daoImpl.save(user);
	}
	
	/**
	 * login
	 * @param user
	 * @return
	 */
	public boolean login(User user) {
		List<User> users = daoImpl.findBy("User", "username", user.getUsername());
		daoImpl.closeSession();
		for(int i=0;i<users.size();i++) {
			if(user.getPassword().equals(users.get(i).getPassword())) {
				return true;
			}
		}
		return false;
	}
	
	public boolean updateUser(User user) {
		List<User> users = daoImpl.findBy("User", "username", user.getUsername());
		daoImpl.closeSession();
		if(users.size() > 0) {
			users.get(0).setPassword(user.getPassword());
			daoImpl.update(users.get(0));
		}
		
		return true;
	}
}
