package com.dao;

import java.util.List;

public interface IBaseDao<T> {
	public boolean save(T entity);
	public boolean update(T entity);
	public boolean delete (T entity);
	public List findBy(String table, String col, String value);
	public List findById(String table, String id);
	public List findAll(String table);
}
