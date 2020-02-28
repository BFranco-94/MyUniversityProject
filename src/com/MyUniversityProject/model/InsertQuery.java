package com.MyUniversityProject.model;

import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;
import com.mysql.jdbc.PreparedStatement;

public class InsertQuery extends QueryManagment{


	@Override
	public boolean QueryPrepare(Object[] values) throws SQLException {
		PreparedStatement ps; //CREATE MY  OBJECT FOR PREPARE MY QUERY
		DataBaseConnection.getInstance().Conexion();
		Calendar calendar = Calendar.getInstance();
		// create a sql date object so we can use it in our INSERT statement
				Date newDate = new Date(calendar.getTime().getTime());
				String query=" INSERT INTO users ( UserName, Email , Password, DateRegister, TermsAcepted ) VALUES (?, ? , ?, ?, ?)";
				boolean res=false;
				KeyPassword kp = new KeyPassword();
				kp.setValNameToEncrypt((String)values[2]);
				String passwordEncrypted= kp.EncryptPasswordSHA256(kp.getValNameToEncrypt());
				boolean resp=false;
				try {
					 ps = (PreparedStatement) DataBaseConnection.getInstance().getConec().prepareStatement(query);
					 ps.setString(1, (String)values[0]);
					 ps.setString(2, (String)values[1] );
					 ps.setString(3, passwordEncrypted);
					 ps.setDate(4, newDate);
					 ps.setString(5, (String)values[3]);
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
	public String QueryWPrepare(String query) {
		// TODO Auto-generated method stub
		return null;
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
	public boolean DeleteQueryHibernate(int idKey) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void ReadQueryHibernate(int idKey) {
		// TODO Auto-generated method stub
		
	}

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
	public boolean UpdateQuery(int idx) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean ReadQuery(int idKey, String keyName) {
		// TODO Auto-generated method stub
		return false;
	}

	
	
}




/*
 Conection conn = new Conection();
		PreparedStatement ps;
		conn.Conexion();
		
		Calendar calendar = Calendar.getInstance();
		// create a sql date object so we can use it in our INSERT statement
		Date newDate = new Date(calendar.getTime().getTime());
		String query=" INSERT INTO users ( UserName, Email , Password, DateRegister, TermsAcepted ) VALUES (?, ? , ?, ?, ?)";
		boolean res=false;
		KeyPassword kp = new KeyPassword();
		kp.setValNameToEncrypt((String)values[2]);
		String passwordEncrypted= kp.EncryptPasswordSHA256(kp.getValNameToEncrypt());
		boolean resp=false;
		try {
			 ps = (PreparedStatement) Conection.conec.prepareStatement(query);
			 ps.setString(1, (String)values[0]);
			 ps.setString(2, (String)values[1] );
			 ps.setString(3, passwordEncrypted);
			 ps.setDate(4, newDate);
			 ps.setString(5, (String)values[3]);
			 res = ps.execute();
			 resp=(!res)? true : false ;
		} catch (SQLException e) {
			System.out.println(	e.getMessage());
			resp=false;
		}finally {
			if(Conection.conec != null) {
				Conection.conec.close();
			}
		}
		return resp;
  
  
 */