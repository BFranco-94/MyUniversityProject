package com.MyUniversityProject.factory_query;
/**
 * @author bryan franco velez
 * */
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.MyUniversityProject.entities.EntityStudentData;
import com.MyUniversityProject.entities.User;
import com.MyUniversityProject.interfaces.Querys;

public class StudentData implements Querys{

	@Override
	public boolean InsertQueryHibernate(Object[] data) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean InsertQueryPrepare(String query) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean InsertQueryPrepare(Object[] data) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean UpdateQuery() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean UpdateQueryHibernate() {
		
		return false;
	}
	/**
	 * @param idx_user 
	 * @param String name: receive the student's name as an argument
	 * @param String lastName: receive the student's lastName as an argument
	 * @param String university: receive the university name as an argument
	 * @param String federalEntity: receive the federal Entity as an argument
	 * @param String country: receive the country name as an argument
	 * @param String status: receive the status student's as an argument
	 * @param String academicArea: receive the academicArea of student's as an argument
	 * */
	public boolean UpdateQueryHibernate(String names, String lastName, String university,
			String federalEntity, String country, String status, String academicArea, String userName, int idx_user) {
		
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(com.MyUniversityProject.entities.EntityStudentData.class);//Para que se traiga el esquema
		cfg.configure("HibernateProperties/hibernate.cfg.xml");
		//Creamos sesion Factory
		SessionFactory factory = cfg.buildSessionFactory();
		
		//Crear Objeto Session
		Session session = factory.openSession();
		
		//Iniciando Transaction
		Transaction t = session.beginTransaction();
		
		String query="UPDATE StudentData SET  "
				+ "Names=: names , "
				+ "LastName=: lastName ,"
				+ "UniversityName=: university ,"
				+ "FederalEntity=: federalEntity ,"
				+ "Country=: country ,"
				+ "StatusOfStudent=: status ,"
				+ "AcademyArea=: academicArea "
			+ "WHERE  id_idx_user=: fKey ";
		//Proceso leer todo
		Query queryHibernate = session.createQuery(query);
		queryHibernate.setParameter("names", names);
		queryHibernate.setParameter("lastName", lastName);
		queryHibernate.setParameter("university", university);
		queryHibernate.setParameter("federalEntity", federalEntity);
		queryHibernate.setParameter("country", country);
		queryHibernate.setParameter("status", status);
		queryHibernate.setParameter("academicArea", academicArea);
		queryHibernate.setParameter("fKey", idx_user);
		int resultQuery = queryHibernate.executeUpdate();
		if(resultQuery==0) { 
			t.rollback();
			return false; 
		}else{ return  true; }
	}
	
	@Override
	public boolean DeleteQuery(int key) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean DeleteQueryHibernate(int idKey) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void ReadQueryHibernate(int idKey) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void ReadQuery(int idKey) {
		// TODO Auto-generated method stub
		
	}

}
