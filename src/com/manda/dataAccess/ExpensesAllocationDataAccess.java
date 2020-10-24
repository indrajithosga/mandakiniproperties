package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.ExpensesAllocation;


public class ExpensesAllocationDataAccess {

public static void saveExpensesAllocation(ExpensesAllocation expensesAllocation){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			
			transaction=session.beginTransaction();
			session.save(expensesAllocation);
			transaction.commit();
			
			
		} catch (Exception e) {
			if(transaction!=null){
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
	}
	
	public static ExpensesAllocation getExpensesAllocation(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			ExpensesAllocation expensesAllocation=(ExpensesAllocation)session.get(ExpensesAllocation.class, id);
			return expensesAllocation;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load ExpensesAllocation", e);
		}
		
	}
	
	public static List<ExpensesAllocation> getAllExpensesAllocation(){
		
		List<ExpensesAllocation> allExpensesAllocation=new ArrayList<ExpensesAllocation>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allExpensesAllocation=session.createQuery("from ExpensesAllocation").list();
			return allExpensesAllocation;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All ExpensesAllocation", e);
		}
		
	}

	
}
