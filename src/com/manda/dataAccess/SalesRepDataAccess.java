package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.SalesRep;
import com.manda.entity.User;

public class SalesRepDataAccess {
	
	public static void saveSalesRep(SalesRep salesRep){
		
		System.out.println(salesRep.getRepFirstName());
		System.out.println(salesRep.getRepLastName());
		System.out.println(salesRep.getRepEmail());
		System.out.println(salesRep.getRepMobileNumber());
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			
			transaction=session.beginTransaction();
			session.save(salesRep);
			transaction.commit();
			
		} catch (Exception e) {
			if(transaction!=null){
				
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
		
	}
	
	public static SalesRep getSalesRep(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			SalesRep salesRep=(SalesRep)session.get(SalesRep.class, id);
			return salesRep;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load SalesRep", e);
		}
		
	}
	
	public static List<SalesRep> getAllSalesRep(){
		
		List<SalesRep> allSalesRep=new ArrayList<SalesRep>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allSalesRep=session.createQuery("from SalesRep").list();
			return allSalesRep;
						
		} catch (Exception e) {
			throw new RuntimeException("Unable load All SalesRep", e);
		}
		
	}
	
	public static void updateSalesRep(SalesRep salesRep){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		session.update(salesRep);
		session.getTransaction().commit();
		
	}
	
	public static int deactivateSalesRep(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static int activateSalesRep(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static void deleteSalesRep(SalesRep salesRep){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.delete(salesRep);
		session.getTransaction().commit();
		
		
		
	}

}
