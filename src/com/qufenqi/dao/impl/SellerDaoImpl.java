package com.qufenqi.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.qufenqi.dao.SellerDao;
import com.qufenqi.entity.Seller;

public class SellerDaoImpl implements SellerDao {
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public SellerDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public void register(Seller seller) {
		
	}

	@Override
	public void login(Seller seller) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void quit() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Seller querySelf(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateSelf(String sellerPassword) {
		String Hql = "update Seller seller set seller.sellerPassword = '"+ sellerPassword +"'";
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery(Hql);
		int i = query.executeUpdate();
		tx.commit();
		session.close();
		return i;
	}

}