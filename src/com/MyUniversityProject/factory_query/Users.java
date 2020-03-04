package com.MyUniversityProject.factory_query;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
	/**@param Object data[]: get values from the formulary -> 
	 * UserName[0], Email[1], Password[2], typeUser[3]
		 * Posible data geted:
		 * IF is UserStudent => 
		 * 	Names[4], LastName[5], UniversityName[6], Status[7], StudyArea[8], Status[9]
		 * ELSE is UserCompany
		 * companyName[4], contactName[5], businessField[6], kindOfCompany[7]
	 */
	public boolean InsertQueryPrepare(Object data[]) throws SQLException{
		PreparedStatement ps; //CREATE MY  OBJECT FOR PREPARE MY QUERY
		DataBaseConnection.getInstance().Conexion();
		String query=null;
		boolean resp=false;
		KeyPassword kp = new KeyPassword();
		kp.setValNameToEncrypt((String) data[2]);
		String passwordEncrypted= kp.EncryptPasswordSHA256(kp.getValNameToEncrypt());
		if(data[3].equals("Student")) {
			query=" INSERT INTO students ( UserName, Password, Names, LastName, Email, University, StudyArea, Status ) "
					+ "VALUES "
					+ "(?, ?, ?, ?, ?, ?, ?, ? )";	
		}else if(data[3].equals("Company")){
			query=" INSERT INTO company ( UserName, Password, Email, CompanyName, ContactName, CompanySize, BusinessLine ) "
					+ "VALUES "
					+ "(?, ?, ?, ?, ?, ?, ? )";	
		}
		ps = (PreparedStatement) DataBaseConnection.getInstance().getConec().prepareStatement(query);
		if(data[3].equals("Student")) {
			//Names[4], LastName[5], UniversityName[6], Status[7], StudyArea[8], Status[9]
			 ps.setString(1, (String)data[0]); //USERNAME
			 ps.setString(2, passwordEncrypted); //PASSWORD
			 ps.setString(3, (String)data[4]); //NAMES
			 ps.setString(4, (String)data[5]); //LASTNAME
			 ps.setString(5, (String)data[1]); //EMAIL
			 ps.setString(6, (String)data[6]); //UNIVERSITY
			 ps.setString(7, (String)data[8]); //STUDYAREA
			 ps.setString(8, (String)data[9]); //STATUS
		}else if(data[3].equals("Company")){
			//companyName[4], contactName[5], businessField[6], CompanySize[7]
			 ps.setString(1, (String)data[0]); //USERNAME
			 ps.setString(2, passwordEncrypted); //PASSWORD
			 ps.setString(3, (String)data[1]); //EMAIL
			 ps.setString(4, (String)data[4]); //CompanyName
			 ps.setString(5, (String)data[5]); //ContactName
			 ps.setString(6, (String)data[7]); //CompanySize
			 ps.setString(7, (String)data[6]); //BusinessLine
		}
		try{
			 resp = ps.execute();
			 resp=(!resp)? true : false ;
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
		
		return true;
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

	@Override
	public boolean ReadQuery(String keyName, String keyPassword, String typeLog) throws SQLException {
		// TODO Auto-generated method stub
		DataBaseConnection.getInstance().Conexion();
		ResultSet rs;
		Statement st;
		String query=null;
		if(typeLog.equals("Student")) {
			query="SELECT * FROM students WHERE UserName='"+keyName+"' AND Password='"+keyPassword+"' ";
		}else {
			query="SELECT * FROM company WHERE UserName='"+keyName+"' AND Password='"+keyPassword+"' ";
		}
		try {
			st = DataBaseConnection.getInstance().getConec().createStatement();
			rs = DataBaseConnection.getInstance().st.executeQuery(query);
			boolean flagRes=false; 
			while(rs.next()) {
				flagRes = ( (keyPassword == rs.getString("Password") )? true : false );
			}
			return flagRes;
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(DataBaseConnection.getInstance().getConec() != null) {
				DataBaseConnection.getInstance().getConec().close();
			}
		}
		return false;
	}
	

}
