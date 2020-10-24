package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.CashCollecting;
import com.manda.entity.User;


public class CashCollectingDataAccess {

public static void saveCashCollecting(CashCollecting CashCollecting){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			
			transaction=session.beginTransaction();
			session.save(CashCollecting);
			transaction.commit();
			
		} catch (Exception e) {
			if(transaction!=null){
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
		
		
	}
	
	public static CashCollecting getCashCollecting(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			CashCollecting cashCollecting=(CashCollecting)session.get(CashCollecting.class, id);
			return cashCollecting;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load CashCollecting", e);
		}
		
	}
	
	public static List<CashCollecting> getAllCashCollecting(){
		
		List<CashCollecting> allCashCollecting=new ArrayList<CashCollecting>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allCashCollecting=session.createQuery("from CashCollecting").list();
			return allCashCollecting;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All CashCollecting", e);
		}
		
	}
	
	public static int deactivateCashCollecting(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static int activateCashCollecting(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static void deleteCashCollecting(CashCollecting cashCollecting){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.delete(cashCollecting);
		session.getTransaction().commit();
		
		
		
	}

	
}
