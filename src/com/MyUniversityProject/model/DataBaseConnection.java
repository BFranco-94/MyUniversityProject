package com.MyUniversityProject.model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.MyUniversityProject.interfaces.ConnectionInterface;
import com.mysql.jdbc.CallableStatement;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/*
 * Design pattern to implement singleton on connection data base
 * */

public class DataBaseConnection implements ConnectionInterface {
	private static DataBaseConnection INSTANCE;
	public static PreparedStatement prest=null;
    public static CallableStatement cllst=null;
    private Connection conec=null;
    public static Statement st=null;
    public static ResultSet rt=null;
	
	//declare my constructor in private
	private DataBaseConnection(){ } /* .... method void */
	
	/* create only one instance on connection data base */
	public synchronized static DataBaseConnection getInstance() {
		if(INSTANCE==null){ // if not exist object created, so ... create an object kind of Connection
			INSTANCE=new DataBaseConnection(); //create Object
			System.out.println("Object created");
		}else{ System.out.println("the object was created" ); }
		return INSTANCE; //else return the object created
	}

	@Override
	public void Conexion() {
		try {
			Class.forName(DRIVER).newInstance();
			setConec((Connection) DriverManager.getConnection(URL,USER,PASSWORD));
			getConec();
		}catch(ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e){
			System.out.println(e.getMessage());
		}
		
	}
	
	//SETTER METHODS
	public void setConec(Connection conec) { this.conec = conec; }
	//GETTERS METHODS
	public Connection getConec() { return conec; }
	
	
	
	
	
}
