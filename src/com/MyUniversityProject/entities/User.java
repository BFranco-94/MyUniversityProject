package com.MyUniversityProject.entities;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -7943973196169693786L;

	/**@see  "
	 *  id_user: This variable is for ...
	 * 	------ Save, Delete or Select the id_user on the Data Base.
	 *  ------ JPA entity -> User " 
	 * 
	 * */
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_user", unique = true, nullable = false)
	private int id_user;
	
	/**@see  "
	 *  userName: This variable is for ...
	 * 	------ Save,Update,Delete or Select the email on the Data Base.
	 *  ------ JPA entity -> User " 
	 *  
	 * */
	@Column(name="UserName")
	private String userName;
	
	/**@see  "
	 *  email: This variable is for ...
	 * 	------ Save,Update,Delete or Select the email on the Data Base.
	 *  ------ JPA entity -> User " 
	 * 
	 * */
	@Column(name="Email")
	private String email;
	
	/**@see  "
	 *  password: This variable is for ...
	 * 	------ Save,Update,Delete or Select the password on the Data Base.
	 *  ------ JPA entity -> User " 
	 * 
	 * */
	@Column(name="Password")
	private String password;
	
	/**@see  "
	 *  dateRegister: This variable is for ...
	 * 	------ Save, Delete or Select the dateRegister on the Data Base.
	 *  ------ JPA entity -> User " 
	 * 
	 * */
	@Column(name="DateRegister")
	private Date dateRegister;
	
	/**@see  "
	 *  termsAccepted: This variable is for ...
	 * 	------ Save, Delete or Select the termsAccepted on the Data Base.
	 *  ------ JPA entity -> User " 
	 * 
	 * */
	@Column(name="TermsAccepted")
	private String termsAccepted;
	
	/**@see  "
	 *  userType: This variable is for ...
	 * 	------ Save, Delete or Select the userType on the Data Base.
	 *  ------ JPA entity -> User " 
	 * 
	 * */
	@Column(name="TypeUser")
	private String userType;
	

	//GETTERS
		/** @return the id_user*/
		public int getId_user(){ return id_user; }
		/** @return the userName */
		public String getUserName(){ return userName; }
		/** @return the email */
		public String getEmail(){ return email; }
		/** @return the password */
		public String getPassword(){ return password; }
		/** @return the Date to Data Base format */
		public Date getDateRegister(){ return dateRegister; }
		/** @return the User type to UserType */
		public String getUserType(){ return userType;}
		/** @return the termsAccepted type to termsAccepted */
		public String getTermsAccepted(){ return termsAccepted; }
		
	//SETTERS
		/** @param id_user the id_user to set */
		public void setId_user(int id_user){ this.id_user = id_user; }
		/** @param userName the userName to set */
		public void setUserName(String userName){ this.userName = userName; }
		/** @param email the email to set */
		public void setEmail(String email) { this.email = email; }
		/** @param password the password to set */
		public void setPassword(String password){ this.password = password; }
		/** @param password the password to set */
		public void setDateRegister(Date dateToRegister){ this.dateRegister = dateToRegister; }
		/** @param typeUser the typeUser to set */
		public void setUserType(String typeUser){ this.userType=typeUser; }
		/** @param termsAccepted the termsAccepted to set */
		public void setTermsAccepted(String termsAccepted){this.termsAccepted=termsAccepted; }
		
	
}
