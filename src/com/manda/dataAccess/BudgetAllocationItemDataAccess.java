package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.BudgetAllocation;
import com.manda.entity.BudgetAllocationItem;

public class BudgetAllocationItemDataAccess {

public static void saveBudgetAllocationItem(BudgetAllocationItem budgetAllocationItem){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			
			transaction=session.beginTransaction();
			session.save(budgetAllocationItem);
			transaction.commit();
			
		} catch (Exception e) {
			if(transaction!=null){
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
	}
	
	public static BudgetAllocationItem getBudgetAllocationItem(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			BudgetAllocationItem budgetAllocationItem=(BudgetAllocationItem)session.get(BudgetAllocationItem.class, id);
			return budgetAllocationItem;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load BudgetAllocationItem", e);
		}
		
	}
	
	public static List<BudgetAllocationItem> getAllBudgetAllocationItem(){
		
		List<BudgetAllocationItem> allBudgetAllocationItem=new ArrayList<BudgetAllocationItem>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allBudgetAllocationItem=session.createQuery("from budget_allocation").list();
			return allBudgetAllocationItem;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All BudgetAllocationItem", e);
		}
		
	}
	
	public static void updateBudgetAllocationItem(BudgetAllocationItem BudgetAllocationItem){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.update(BudgetAllocationItem);
		session.getTransaction().commit();
		
		
	}
	
	public static int deactivateBudgetAllocationItem(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static int activateBudgetAllocationItem(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static void deleteBudgetAllocationItem(BudgetAllocationItem budgetAllocationItem){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.delete(budgetAllocationItem);
		session.getTransaction().commit();
		
	}

	
	
}
