package com.MyUniversityProject.interfaces;

public interface ConnectionInterface {
	/* DATA FOR CONNECT ON THE DATABASE */
	final public String HOST="localhost";
	final public String DB="bdtesting";
	final public String USER="root";
	final public String PASSWORD="";
	/* MY DRIVER -> PATH */
	final public String DRIVER="com.mysql.jdbc.Driver";
	/* URL FOR CONNECT */
	final public String URL="jdbc:mysql://"+HOST+"/"+DB;
	
	//METHOD TO LIFT THE CONNECTION
	public void Conexion();
	

}
