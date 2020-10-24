package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.Projects;
import com.manda.entity.User;


public class ProjectDataAccess {
	
public static void saveProjects(Projects projects){
		
	
	System.out.println(projects.getProName());
	System.out.println(projects.getProArea());
	System.out.println(projects.getProLocation());
	System.out.println(projects.getProStartedDate());
	
	
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=null;
		
		try {
			
			transaction=session.beginTransaction();
			session.save(projects);
			transaction.commit();
			
		} catch (Exception e) {
			if(transaction!=null){
				
				transaction.rollback();
			}
		}finally{
			
			session.close();
		}
		
		
		
	}
	
	public static Projects getProject(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			Projects projects=(Projects)session.get(Projects.class, id);
			return projects;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load Project", e);
		}
		
	}
	
	public static List<Projects> getAllProjects(){
		
		List<Projects> allProjects=new ArrayList<Projects>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allProjects=session.createQuery("from Projects").list();
			return allProjects;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All Projects", e);
		}
	}
	
	public static void updateProject(Projects projects){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.update(projects);
		session.getTransaction().commit();
		
	}
	
	public static int deactivateProject(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static int activateProject(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		return 1;
	}
	
	public static void deleteProject(Projects projects){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.delete(projects);
		session.getTransaction().commit();
		
	}

}
