package com.MyUniversityProject.controller;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyUniversityProject.factory_query.QuerysEntityFactory;
import com.MyUniversityProject.factory_query.TypeEntity;
import com.MyUniversityProject.interfaces.Querys;





@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
	                response.setContentType("text/html; charset=UTF-8"); 
                    //obtencion de datos desde javascript	
				     String	keyName = request.getParameter("User"); 
					 String keyPassword= request.getParameter("Password");
                     String typeLog = request.getParameter("TypeUser");
					 boolean flagResponse = false;
                     
					 Querys queryEntityStudent = QuerysEntityFactory.buildEntityQuery(TypeEntity.USER);
					 
					 try {
						 flagResponse = queryEntityStudent.ReadQuery(keyName, keyPassword, typeLog);
						 String message = (flagResponse)? "Login Successfully": "Error on login, try again";
						//conversion de los datos recibidos de javascript a JSON
	                      String jSonMessage=
									"{ "
										+"\"LogUser\":{"
											+ "\"user\":\""+keyName+"\","
											+ "\"password\":\""+keyPassword+"\","
											+ "\"type\" :" + flagResponse
										+ "}"
									+ "}";
						 response.getWriter().append(jSonMessage);
					} catch (SQLException e) {
						e.printStackTrace();
					}
					 
					 
				
				

	}

}
