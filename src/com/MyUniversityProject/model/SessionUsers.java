package com.MyUniversityProject.model;

public class SessionUsers {
	private String nameUser; //NAME USER 
	private String typeLog; //DEFINE IF IS STUUDENT OR COMPANY
	private int identifierKey;
	public SessionUsers(){ }
	/**
	 * @param String nameUser: value for  ->  name user
	 * @param String typeLog:  value for  ->  student or company
	 * @param int identifierKey:  value for  ->  identifierKey user
	 * */
	public SessionUsers(String nameUser, String typeLog, int identifierKey) {
		this.nameUser=nameUser;
		this.typeLog=typeLog;
		this.identifierKey=identifierKey;
	}
	
	//SETTER METHODS
	/** @param name :  the name to set */
	public void setNameUser(String name){ this.nameUser=name; }
	/** @param typeLog :  the typeLog to set */
	public void setTypeLog(String typeLog){ this.typeLog=typeLog; }
	/** @param identifierKey :  the identifierKey to set */
	public void setIdentifierKey(int identifierKey){ this.identifierKey = identifierKey; }
	
	//GETTERS METHODS
	/** @return the the name user */
	public String getNameUser(){ return nameUser; }
	/** @return the typeLog of user */
	public String getTypeLog(){ return typeLog; }
	/** @return the identifierKey */
	public int getIdentifierKey() { return identifierKey; }
	
	

}
