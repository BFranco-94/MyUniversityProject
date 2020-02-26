package com.MyUniversityProject.model;

public class ObjectSession {
	private static ObjectSession INSTANCE;
	private String userName;
	private String password;
	private String kindOfUser;
	
	//contructor without parameters
	private ObjectSession(){ }
	/* method to instance only one time my object session */
	public synchronized static ObjectSession getInstance() {
		if(INSTANCE==null){ INSTANCE=new ObjectSession(); }
		return INSTANCE;
	}

	//SETTERS
	/** @param kindOfUser the kindOfUser to set */
	public void setKindOfUser(String kindOfUser) { this.kindOfUser = kindOfUser; }
	/** @param userName the userName to set */
	public void setUserNaame(String userName) { this.userName = userName; }	
	/** @param password the password to set */
	public void setPassword(String password) { this.password = password; }
	
	
	//GETTERS
	/** @return the kindOfUser */
	public String getKindOfUser() { return kindOfUser; }
	/** @return the userName */
	public String getUserNaame() { return userName; }
	/** @return the password */
	public String getPassword() { return password; }



	


	


	
	
	
	
	
	

}
