package com.MyUniversityProject.factory_query;

import com.MyUniversityProject.interfaces.Querys;

public class QuerysEntityFactory {
	public static Querys buildEntityQuery(TypeEntity typeEntity){
		switch(typeEntity) {
			case USER:
				return new Users();
			case DATA_STUDENT:
				return null;
			case DATA_COMPANY:
				return null;
			default:
			return null;
		}
		
	}
}
