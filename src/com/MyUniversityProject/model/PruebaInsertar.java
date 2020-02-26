package com.MyUniversityProject.model;

import java.sql.SQLException;

public class PruebaInsertar {

	public static void main(String[] args) {
		String data_1="generation";
		String data_2="generation@generation.com";
		String password="bryan123";
		String terms="1";
		InsertQuery iq= new InsertQuery();
		Object []values={
				data_1, 
				data_2, 
				password,
				terms
		};
		iq.setValues(values);
		boolean answer = false;
		try {
			answer = iq.QueryPrepare(iq.getValues());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(answer);
	}

}
