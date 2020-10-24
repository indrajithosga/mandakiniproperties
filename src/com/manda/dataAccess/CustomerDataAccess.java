package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.Customer;
import com.manda.entity.User;


public class CustomerDataAccess {

public static void saveCustomer(Customer customer){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			transaction=session.beginTransaction();
			session.save(customer);
			transaction.commit();
			
			
		} catch (Exception e) {
			if(transaction!=null){
				
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
	}
	
	public static Customer getCustomer(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			Customer customer=(Customer)session.get(Customer.class, id);
			return customer;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load Customer", e);
		}
		
	}
	
	public static List<Customer> getAllCustomer(){
		
		List<Customer> allCustomer=new ArrayList<Customer>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allCustomer=session.createQuery("from Customer").list();
			return allCustomer;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All Customer", e);
		}
		
	}
	
	public static void updateCustomer(Customer customer){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.update(customer);
		session.getTransaction().commit();
		
		
	}
	
	public static int deactivateCustomer(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static int activateCustomer(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static void deleteCustomer(Customer customer){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.delete(customer);
		session.getTransaction().commit();
		
	}

	
}
