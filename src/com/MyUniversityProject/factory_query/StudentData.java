package com.MyUniversityProject.factory_query;
/**
 * @author bryan franco velez
 * */
import java.sql.SQLException;
import com.MyUniversityProject.interfaces.Querys;
import com.MyUniversityProject.model.DataBaseConnection;
import com.mysql.jdbc.PreparedStatement;

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
	/**
	 * @param idx_user 
	 * @throws SQLException 
	 * */
	public boolean UpdateQuery(int idx) throws SQLException {
		
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
	 * @throws SQLException 
	 * */
	public boolean UpdateQuery(
			String names, String lastName, String university,String federalEntity,
		    String country, String status, String academicArea, String userName, int idx_user) throws SQLException {
		DataBaseConnection.getInstance().Conexion();
		boolean flagRes=false;
		try {

		   String query="UPDATE studentdata SET  "
				+ "Names= ? , "
				+ "LastName= ? ,"
				+ "NameUniversity= ? ,"
				+ "FederalEntity= ? ,"
				+ "Country= ? ,"
				+ "StatusOfStudent= ?,"
				+ "AcademicArea= ? "
			+ "WHERE  id_idxUser= ? ";
			PreparedStatement ps = (PreparedStatement) DataBaseConnection.getInstance().getConec().prepareStatement(query);
				ps.setString(1, names);
				ps.setString(2, lastName);
				ps.setString(3, university);
				ps.setString(4, federalEntity);
				ps.setString(5, country);
				ps.setString(6, status);
				ps.setString(7, academicArea);
				ps.setInt(8, idx_user);
			int rowsAffected = ps.executeUpdate();
			System.out.println(" rows affected => "+rowsAffected);
			flagRes= (rowsAffected>0)?true: false;
		} catch (SQLException e) {
			 System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}finally {
			if(DataBaseConnection.getInstance().getConec() != null) {
			   DataBaseConnection.getInstance().getConec().close();
			}
		}
		return flagRes;
		
	}

	@Override
	public boolean UpdateQueryHibernate() {
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
	public boolean ReadQuery(int idKey, String keyName) {
		// TODO Auto-generated method stub
		return false;
	}

}
