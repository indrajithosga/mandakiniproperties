package com.manda.dataAccess;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.manda.entity.ProjectCategories;


public class ProjectsCategoryDataAccess {
	
	public static void main(String[] args) {
		saveProjectCategories();
	}

public static void saveProjectCategories(){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		
		String []pro={"Land","Residential","Commercial","Indutrial","Home"};
		
		for (int i = 0; i < pro.length; i++) {
			
			Session session=sf.openSession();
			session.beginTransaction();
			
			ProjectCategories projectCategories=new ProjectCategories();
			projectCategories.setCatName(pro[i]);
			
			session.save(projectCategories);
			session.getTransaction().commit();
		}
		
		
	}
	
	public static ProjectCategories getProjectCategory(int id){
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			ProjectCategories projectCategories=(ProjectCategories)session.get(ProjectCategories.class, id);
			return projectCategories;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load ProjectCategories", e);
		}
	}
	
	public static List<ProjectCategories> getAllProjectCategory(){
		
		List<ProjectCategories> allProjectCategories=new ArrayList<ProjectCategories>();
		
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		
		try {
			
			allProjectCategories=session.createQuery("from ProjectCategories").list();
			return allProjectCategories;
			
		} catch (Exception e) {
			throw new RuntimeException("Unable load All ProjectCategories", e);
		}
		
	}
	
	
	
}
