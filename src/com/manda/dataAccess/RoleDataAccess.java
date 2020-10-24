package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.Role;

public class RoleDataAccess {
	
	/*public static void main(String[] args) {
		
		saveRole();
	}*/
	
	public static void saveRole(){
		
		try {
			
			Configuration config=new Configuration();
			SessionFactory sf=config.configure().buildSessionFactory();
			
			String []r={"Admin","Manager","System User","Project Manager","Sales Manager"};
			
			for (int i = 0; i < r.length; i++) {
				
				Role role=new Role();
				role.setRoleName(r[i]);
				
				Session session=sf.openSession();
				session.beginTransaction();
				session.save(role);
				session.getTransaction().commit();
						
			}
							
		} catch (Exception e) {
			throw new RuntimeException("Unable to Save Role", e);
		}
		
	}
	
public static Role getRole(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			Role role=(Role)session.get(Role.class, id);
			return role;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load Role", e);
		}
		
	}
	
	public static List<Role> getAllRole(){
		
		List<Role> allRole=new ArrayList<Role>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allRole=session.createQuery("from Role").list();
			return allRole;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All Role", e);
		}
		
	}
	
	

}
