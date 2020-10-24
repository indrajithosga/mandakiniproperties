package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.Expenses;
import com.manda.entity.User;


	public class ExpensesDataAccess {

		public static void saveExpenses(Expenses expenses){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			
			transaction=session.beginTransaction();
			session.save(expenses);
			transaction.commit();
			
		} catch (Exception e) {
			if(transaction!=null){
				
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
		
		
	}
	
	public static Expenses getExpenses(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			Expenses expenses=(Expenses)session.get(Expenses.class, id);
			return expenses;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load Expenses", e);
		}
		
	}
	
	public static List<Expenses> getAllExpenses(){
		
		List<Expenses> allExpenses=new ArrayList<Expenses>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allExpenses=session.createQuery("from Expenses").list();
			return allExpenses;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All Expenses", e);
		}
		
	}
	
	public static void updateExpenses(Expenses expenses){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.update(expenses);
		session.getTransaction().commit();
		
	}
	
	public static int deactivateExpenses(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static int activateExpenses(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static void deleteExpenses(Expenses expenses){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.delete(expenses);
		session.getTransaction().commit();
		
	}
	
	
	
}
