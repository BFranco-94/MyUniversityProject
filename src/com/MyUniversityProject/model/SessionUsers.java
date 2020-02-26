package com.MyUniversityProject.model;

public class SessionUsers {
	private String nameUser; //NAME USER 
	private String typeLog; //DEFINE IF IS STUUDENT OR COMPANY
	public SessionUsers(){ }
	/**
	 * @param String nameUser: value for  ->  name user
	 * @param String typeLog:  value for  ->  student or company
	 * */
	public SessionUsers(String nameUser, String typeLog) {
		this.nameUser=nameUser;
		this.typeLog=typeLog;
	}
	
	//SETTER METHODS
	public void setNameUser(String name){ this.nameUser=name; }
	public void setTypeLog(String typeLog){ this.typeLog=typeLog; }
	
	//GETTERS METHODS
	public String getNameUser(){ return nameUser; }
	public String getTypeLog(){ return typeLog; }
	

}
