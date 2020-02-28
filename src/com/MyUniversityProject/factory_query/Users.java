package com.MyUniversityProject.factory_query;

import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.MyUniversityProject.entities.User;
import com.MyUniversityProject.interfaces.Querys;
import com.MyUniversityProject.model.DataBaseConnection;
import com.MyUniversityProject.model.KeyPassword;
import com.mysql.jdbc.PreparedStatement;

public class Users implements Querys{
	
	@Override
	/**@param Object data[]: get values from the formulary -> 
	 * Object[UserName, Email , Password, typeUser, DateRegister, TermsAcepted ] */
	public boolean InsertQueryHibernate(Object data[]) throws SQLException {
		//configuration for hibernate
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(com.MyUniversityProject.entities.User.class);
		cfg.configure("HibernateProperties/hibernate.cfg.xml");
		//create the session factory
		SessionFactory factory = cfg.buildSessionFactory();
		//create object session
		Session session = factory.openSession();
		//init transaction
		Transaction t = session.beginTransaction();
		StudentData sData = new StudentData();
		
		boolean flagRes=false; //response im will send to my controller as answer 
		KeyPassword kp = new KeyPassword(); //Object for enscrypt the password and send it to the data base
		String passwordEncrypted= kp.EncryptPasswordSHA256((String) data[2]);
		Calendar calendar = Calendar.getInstance();
		Date dateToRegister = new Date(calendar.getTime().getTime());
		User objectUser = new User();
			objectUser.setUserName((String)data[0]); //[0]username
			objectUser.setEmail((String) data[1]);  //[1] email
			objectUser.setPassword(passwordEncrypted); //I get my variable with a key encrypted => [2]password
			objectUser.setUserType((String) data[3]); // [3]usertype
			objectUser.setTermsAccepted((String)data[4]); //[4] termsAccepted
			objectUser.setDateRegister((Date)dateToRegister); // I get my object to insert on data base => Date format
		Integer resInsert = (Integer) session.save(objectUser);
		int id = objectUser.getId_user();
		System.out.println("Id del usuario: "+id+" , resInsert => "+resInsert);
		//run transaction
		session.getTransaction().commit();
		flagRes=true;
		
		boolean respStudent=sData.UpdateQuery(
				(String)data[5], (String)data[6], (String)data[7], (String)data[8], 
				(String)data[9], (String)data[10], (String)data[11], (String)data[0],
				id
		);
		System.out.println(objectUser.getId_user());
		//close the session
		session.close();
		//if(!respStudent && !flagRes ) {
		if(!respStudent && !flagRes ) {
			t.rollback();
			System.out.println("Rollback executed, try again");
			return false;
		}else {
			System.out.println("Registro hecho satisfactoriamente");
			return true;
		}
	}
	
	@Override
	public boolean InsertQueryPrepare(String query) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	/**@param Object data[]: get values from the formulary -> Object[UserName, Emai, Password, termsAccepted, typeUser] */
	public boolean InsertQueryPrepare(Object data[]) throws SQLException{
		PreparedStatement ps; //CREATE MY  OBJECT FOR PREPARE MY QUERY
		DataBaseConnection.getInstance().Conexion();
		Calendar calendar = Calendar.getInstance();
		// create a sql date object so we can use it in our INSERT statement
		Date dateToRegister = new Date(calendar.getTime().getTime());
		String query=" INSERT INTO users ( UserName, Email , Password, typeUser, DateRegister, TermsAcepted ) VALUES (?, ? , ?, ?, ?, ? )";
		boolean res=false;
		KeyPassword kp = new KeyPassword();
		kp.setValNameToEncrypt((String) data[2]);
		String passwordEncrypted= kp.EncryptPasswordSHA256(kp.getValNameToEncrypt());
		boolean resp=false;
		try {
			 ps = (PreparedStatement) DataBaseConnection.getInstance().getConec().prepareStatement(query);
			 ps.setString(1, (String)data[0]);
			 ps.setString(2, (String)data[1]);
			 ps.setString(3, passwordEncrypted);
			 ps.setString(4, (String)data[3]);
			 ps.setDate(5, dateToRegister);
			 ps.setString(6, (String)data[4]);
			 res = ps.execute();
			 resp=(!res)? true : false ;
		} catch (SQLException e) {
			System.out.println(	e.getMessage());
			resp=false;
		}finally {
			if(DataBaseConnection.getInstance().getConec() != null) {
				DataBaseConnection.getInstance().getConec().close();
			}
		}
		return resp;
	}
	
	
	public boolean InsertQueryPrepare(String userName, String email, String password,
								      String termsAccepted,String typeUser)throws SQLException
	{
		PreparedStatement ps; //CREATE MY  OBJECT FOR PREPARE MY QUERY
		DataBaseConnection.getInstance().Conexion();
		Calendar calendar = Calendar.getInstance();
		// create a sql date object so we can use it in our INSERT statement
		Date dateToRegister = new Date(calendar.getTime().getTime());
		String query=" INSERT INTO users ( UserName, Email , Password, typeUser, DateRegister, TermsAcepted ) VALUES (?, ? , ?, ?, ?, ? )";
		boolean res=false;
		KeyPassword kp = new KeyPassword();
		kp.setValNameToEncrypt(password);
		String passwordEncrypted= kp.EncryptPasswordSHA256(kp.getValNameToEncrypt());
		boolean resp=false;
		try {
			 ps = (PreparedStatement) DataBaseConnection.getInstance().getConec().prepareStatement(query);
			 ps.setString(1, (String)userName);
			 ps.setString(2, (String)email);
			 ps.setString(3, passwordEncrypted);
			 ps.setString(4, typeUser);
			 ps.setDate(5, dateToRegister);
			 ps.setString(6, termsAccepted);
			 res = ps.execute();
			 resp=(!res)? true : false ;
		} catch (SQLException e) {
			System.out.println(	e.getMessage());
			resp=false;
		}finally {
			if(DataBaseConnection.getInstance().getConec() != null) {
				DataBaseConnection.getInstance().getConec().close();
			}
		}
		return resp;
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

	@Override
	public boolean UpdateQuery(int idx) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean UpdateQueryHibernate() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean DeleteQuery(int key) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
