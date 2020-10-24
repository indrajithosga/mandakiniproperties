package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.MakingTarget;

public class MakingTargetDataAccess {

	public static void saveMakingTarget(MakingTarget makingTarget){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			
			transaction=session.beginTransaction();
			session.save(makingTarget);
			transaction.commit();
			
		} catch (Exception e) {
			if(transaction!=null){
				
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
	
	}
	
	public static MakingTarget getMakingTarget(int id){
		
		try {
			
			SessionFactory sf=new Configuration().configure().buildSessionFactory();
			Session session=sf.openSession();
			session.beginTransaction();
			
			MakingTarget makingTarget=(MakingTarget)session.get(MakingTarget.class, id);
			return makingTarget;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load MakingTarget", e); 
		}
		
	}
	
	public static List<MakingTarget> getAllMakingTarget(){
		
		List<MakingTarget> getAll=new ArrayList<MakingTarget>();
		
		try {
			
			SessionFactory sf=new Configuration().configure().buildSessionFactory();
			Session session=sf.openSession();
			session.beginTransaction();
			
			getAll=session.createQuery("from MakingTarget").list();
			return getAll;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All CashCollecting", e);
		}
		
		
	}
	
}
