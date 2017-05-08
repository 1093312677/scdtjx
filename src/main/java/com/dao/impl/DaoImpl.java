package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entity.ProductModel;

@Repository
public class DaoImpl<T> extends BaseAdapter<T>{
	@Autowired
	private SessionFactory sessionFactory;
	private Session session;
	private String hql;
	
	public void closeSession() {
		if(session.isOpen()) {
			session.close();
		}
	}
	
	@Override
	public boolean save(T entity) {
		try{
			session = sessionFactory.getCurrentSession();
			session.getTransaction().begin();
			session.save(entity);
			session.getTransaction().commit();
			return true;
		}catch(Exception e) {
			session.getTransaction().rollback();
			return false;
		}finally{
			if(session.isOpen()) {
				session.close();
			}
		}
		
	}

	@Override
	public boolean update(T entity) {
		try{
			session = sessionFactory.getCurrentSession();
			session.getTransaction().begin();
			session.update(entity);
			session.getTransaction().commit();
			return true;
		}catch(Exception e) {
			session.getTransaction().rollback();
			return false;
		}finally{
			if(session.isOpen()) {
				session.close();
			}
		}
	}

	@Override
	public boolean delete(T entity) {
		try{
			session = sessionFactory.getCurrentSession();
			session.getTransaction().begin();
			session.delete(entity);
			session.getTransaction().commit();
			return true;
		}catch(Exception e) {
			session.getTransaction().rollback();
			return false;
		} finally{
			if(session.isOpen()) {
				session.close();
			}
		}
	}

	@Override
	public List findBy(String table, String col, String value) {
		List entity = null;
		hql = "FROM "+table+" WHERE "+col+" = '"+value+"'";
		try{
			session = sessionFactory.getCurrentSession();
			session.getTransaction().begin();
			entity = session.createQuery(hql).list();
			session.getTransaction().commit();
			return entity;
		}catch(Exception e) {
			return entity;
		}
	}

	@Override
	public List findById(String table, String id) {
		List entity = null;
		hql = "FROM "+table+" WHERE id = "+id;
		try{
			session = sessionFactory.openSession();
			session.getTransaction().begin();
			entity = session.createQuery(hql).list();
			session.getTransaction().commit();
			return entity;
		}catch(Exception e) {
			session.getTransaction().commit();
			return entity;
		}
	}
	
	public List findById2(String table, String id) {
		List entity = null;
		hql = "FROM "+table+" WHERE id = "+id;
		try{
			session = sessionFactory.openSession();
			session.getTransaction().begin();
			entity = session.createQuery(hql).list();
			session.getTransaction().commit();
			return entity;
		}catch(Exception e) {
			return entity;
		}
	}
	
	@Override
	public List findAll(String table) {
		List entity = null;
		hql = "FROM "+table;
		try{
			session = sessionFactory.openSession();
			session.getTransaction().begin();
			entity = session.createQuery(hql).list();
			session.getTransaction().commit();
			return entity;
		}catch(Exception e) {
			return entity;
		}
	}
	
	
	public boolean updateBy(String name, String id){
		hql = "UPDATE Product set productName=? where id=?";
		try{
			session = sessionFactory.getCurrentSession();
			session.getTransaction().begin();
			Query query = session.createQuery(hql);
			query.setString(0, name);
			query.setString(1, id);
			query.executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch(Exception e) {
			session.getTransaction().rollback();
			return false;
		} finally{
			if(session.isOpen()) {
				session.close();
			}
		}
	}
	public boolean updateModel(ProductModel productModel){
		hql = "UPDATE ProductModel set productModelName=? ,weight =?, power=?,introduce=? where id=?";
		try{
			session = sessionFactory.getCurrentSession();
			session.getTransaction().begin();
			Query query = session.createQuery(hql);
			query.setString(0, productModel.getProductModelName());
			query.setString(1, productModel.getWeight());
			query.setString(2, productModel.getPower());
			query.setString(3, productModel.getIntroduce());
			query.setLong(4, productModel.getId());
			query.executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch(Exception e) {
			session.getTransaction().rollback();
			return false;
		} finally{
			if(session.isOpen()) {
				session.close();
			}
		}
	}
	
	
}
