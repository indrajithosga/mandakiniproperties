package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.BudgetAllocation;
import com.manda.entity.Customer;



public class BudgetAllocationDataAccess {

public static void saveBudgetAllocation(BudgetAllocation budgetAllocation){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			
			transaction=session.beginTransaction();
			session.save(budgetAllocation);
			transaction.commit();
			
		} catch (Exception e) {
			if(transaction!=null){
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
		
		
	}
	
	public static BudgetAllocation getBudgetAllocation(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			BudgetAllocation budgetAllocation=(BudgetAllocation)session.get(BudgetAllocation.class, id);
			return budgetAllocation;
		} catch (Exception e) {
			throw new RuntimeException("Unable load BudgetAllocation", e);
		}
		
	}
	
	public static List<BudgetAllocation> getAllBudgetAllocation(){
		
		List<BudgetAllocation> allBudgetAllocation=new ArrayList<BudgetAllocation>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allBudgetAllocation=session.createQuery("from budget_allocation").list();
			return allBudgetAllocation;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All BudgetAllocation", e);
		}
		
	}
	
	public static void updateBudgetAllocation(BudgetAllocation budgetAllocation){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.update(budgetAllocation);
		session.getTransaction().commit();
		
		
	}
	
	public static int deactivateBudgetAllocation(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static int activateBudgetAllocation(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static void deleteBudgetAllocation(BudgetAllocation budgetAllocation){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.delete(budgetAllocation);
		session.getTransaction().commit();
		
	}

	
	
}
