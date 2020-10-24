package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.Supplier;
import com.manda.entity.User;

public class SupplierDataAccess {

	public static void saveSupplier(Supplier supplier){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			
			transaction=session.beginTransaction();
			session.save(supplier);
			transaction.commit();
			
		} catch (Exception e) {
			if(transaction!=null){
				
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
		
	}
	
	public static Supplier getSupplier(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			Supplier supplier=(Supplier)session.get(Supplier.class, id);
			return supplier;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load Supplier", e);
		}
		
	}
	
	public static List<Supplier> getAllSupplier(){
		
		List<Supplier> allSuppliers=new ArrayList<Supplier>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allSuppliers=session.createQuery("from Supplier").list();
			return allSuppliers;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All Suppliers", e);
		}
		
	}
	
	public static void updateSupplier(Supplier supplier){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.update(supplier);
		session.getTransaction().commit();
		
		
	}
	
	public static int deactivateSupplier(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static int activateSupplier(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		
		return 1;
	}
	
	public static void deleteSupplier(Supplier supplier){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.delete(supplier);
		session.getTransaction().commit();
		
	}
	
}
