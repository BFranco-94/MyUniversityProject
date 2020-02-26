package com.MyUniversityProject.model;

public class AcessLogin {
	private static AcessLogin INSTANCE;
	private String userName;
	private String password; 
	private AcessLogin(){ }
	
	public synchronized static AcessLogin getInstance() {
		if(INSTANCE==null) { INSTANCE=new AcessLogin(); }
		return INSTANCE;
	}
	
	public String MessageLogin() {
		String messageToLog = (this.userName=="franco" && this.password=="123")? "Successfull!" : "Error, invalid Password or userName";
		return messageToLog;
	}
	
	//SETTERS
	public void setUserName(String username){ this.userName=username; }
	public void setPassword(String password){ this.password=password;  }
	
	//GETTERS
	public String getUserName(){ return userName; }
	public String getPassword(){ return password; }
}
