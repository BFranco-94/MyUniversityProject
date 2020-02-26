package com.MyUniversityProject.interfaces;
import java.sql.SQLException;

public interface Querys {
	
	public boolean InsertQueryHibernate(Object data[]);
	public boolean InsertQueryPrepare(String query);
	boolean InsertQueryPrepare(Object[] data) throws SQLException;
	
	public boolean UpdateQuery();
	public boolean UpdateQueryHibernate();
	
	public boolean DeleteQuery(int key);	
	public boolean DeleteQueryHibernate(int idKey);
	
	public void ReadQueryHibernate(int idKey);
	public void ReadQuery(int idKey);
	
}
