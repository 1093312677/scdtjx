package com.dao.impl;

import java.util.List;

import com.dao.IBaseDao;

public class BaseAdapter<T> implements IBaseDao<T>{

	@Override
	public boolean save(T entity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(T entity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(T entity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List findBy(String table, String col, String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List findById(String table, String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List findAll(String table) {
		// TODO Auto-generated method stub
		return null;
	}

}
