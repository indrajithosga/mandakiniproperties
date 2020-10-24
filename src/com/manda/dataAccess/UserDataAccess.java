package com.manda.dataAccess;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.User;

public class UserDataAccess {
	
	public static void saveUser(User user){
					
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		transaction=session.beginTransaction();
		session.save(user);
		transaction.commit();
		
		try {
			
			
		} catch (Exception e) {
			if(transaction!=null){
				
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
		
	}
	
	public static User getUser(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			User user=(User)session.get(User.class, id);
			return user;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load User", e);
		}
		
		
	}
	
	public static List<User> getAllUsers(){
		
		List<User> allUsers=new ArrayList<User>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allUsers=session.createQuery("from User").list();
			return allUsers;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All User", e);
		}
		
		
	}
	
	public static void updateUser(User user){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.update(user);
		session.getTransaction().commit();
				
	}
	
	public static int deactivateUser(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static int activateUser(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static void deleteUser(User user){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.delete(user);
		session.getTransaction().commit();
		
	}

}
