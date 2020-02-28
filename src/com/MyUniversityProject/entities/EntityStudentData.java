package com.MyUniversityProject.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="studentdata")
@PrimaryKeyJoinColumn(name = "user")
public class EntityStudentData implements Serializable{

	private static final long serialVersionUID = 59862378599889582L;
	/**@see  "
	 *  id_studentData: This variable is for ...
	 * 	------ Save or Select the id_studentData on the Data Base.
	 *  ------ JPA entity -> studentdata " 
	 * 
	 * */
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_dateUser" , unique = true, nullable = false)
		private int id_dateUser;
	/**@see  "
	 *  idx_user: This variable is for ...
	 * 	------ Save or Select the idx_user on the Data Base.
	 *  ------ JPA entity -> studentdata " 
	 * 
	 * */
	@Id
	@Column(name="id_idxUser")
		private long idx_user;
	/**@see  "
	 *  userName: This variable is for ...
	 * 	------ Save, Delete, update or Select the userName on the Data Base.
	 *  ------ JPA entity -> studentdata " 
	 * 
	 * */
	@Column(name="Names")
		private String name;
	/**@see  "
	 *  lastName: This variable is for ...
	 * 	------ Save, Delete, update or Select the userName on the Data Base.
	 *  ------ JPA entity -> lastName " 
	 * 
	 * */
	@Column(name="LastName")
		private String lastName;
	/**@see  "
	 *  universityName: This variable is for ...
	 * 	------ Save, Delete, update or Select the userName on the Data Base.
	 *  ------ JPA entity -> universityName " 
	 * 
	 * */
	@Column(name="NameUniversity")
		private String universityName;
	
	/**@see  "
	 *  federalEntity: This variable is for ...
	 * 	------ Save, Delete, update or Select the userName on the Data Base.
	 *  ------ JPA entity -> federalEntity " 
	 * 
	 * */
	@Column(name="FederalEntity")
		private String federalEntity;
	
	/**@see  "
	 *  country: This variable is for ...
	 * 	------ Save, Delete, update or Select the userName on the Data Base.
	 *  ------ JPA entity -> country " 
	 * 
	 * */
	@Column(name="Country")
		private String country;
	
	/**@see  "
	 *  academyArea: This variable is for ...
	 * 	------ Save, Delete, update or Select the userName on the Data Base.
	 *  ------ JPA entity -> academyArea " 
	 * 
	 * */
	@Column(name="AcademicArea")
		private String academyArea;
	
	/**@see  "
	 *  status_Student: This variable is for ...
	 * 	------ Save, Delete, update or Select the userName on the Data Base.
	 *  ------ JPA entity -> status_Student " 
	 * 
	 * */
	@Column(name="StatusOfStudent")
		private String status_Student;
		
	//SETTERS
		/** @param id_studentData the id_studentData to set */
		public void setId_dateUser(int id_dateUser){ this.id_dateUser = id_dateUser; }
		
		/** @param idx_user the idx_user to set */
		public void setIdx_user(int idx_user){ this.idx_user = idx_user; }
		
		/** @param userName the userName to set */
		public void setName(String name){ this.name = name; }
		
		/** @param lastName the lastName to set */
		public void setLastName(String lastName){ this.lastName = lastName; }
		
		/** @param universityName the universityName to set */
		public void setUniversityName(String universityName){ this.universityName = universityName; }
		
		/** @param federalEntity the federalEntity to set */
		public void setFederalEntity(String federalEntity){ this.federalEntity = federalEntity; }
		
		/** @param country the country to set */
		public void setCountry(String country){ this.country = country; }
		
		/** @param academyArea the academyArea to set */
		public void setAcademyArea(String academyArea){ this.academyArea = academyArea; }
		
		/** @param status_Student the status_Student to set */
		public void setStatus_Student(String status_Student){ this.status_Student = status_Student; }
	
		
	//GETTERS
		/** @return the id_studentData */
		public long getId_dateUser(){ return id_dateUser; }
		
		/** @return the idx_user */
		public long getIdx_user(){ return idx_user; }
		
		/** @return the userName */ 
		public String getName(){ return name; }
		
		/** @return the lastName */
		public String getLastName(){ return lastName; }
		
		/**@return the universityName */
		public String getUniversityName(){ return universityName; }
		
		/** @return the federalEntity */
		public String getFederalEntity(){ return federalEntity; }
		
		/** @return the country */
		public String getCountry(){	return country; }
	
		/** @return the academyArea */
		public String getAcademyArea(){	return academyArea; }
		
		/** @return the status_Student */
		public String getStatus_Student(){ return status_Student; }
	
}


/*
 * Determinante de una matriz, rotacion de matriz, palindromo, balance de parentesis
 * Baeldung, baeldung java 8
 * method references
 * class references
 * 
 * 
 * */
