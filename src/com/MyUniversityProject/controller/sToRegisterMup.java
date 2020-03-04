package com.MyUniversityProject.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.MyUniversityProject.factory_query.QuerysEntityFactory;
import com.MyUniversityProject.factory_query.TypeEntity;
import com.MyUniversityProject.interfaces.Querys;
import com.MyUniversityProject.model.SessionUsers;

/**
 * Servlet implementation class sToRegisterMup
 */
@WebServlet(description = "This servlet contain all the information from formulary of register to inster on data base", urlPatterns = { "/sToRegisterMup" })
public class sToRegisterMup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sToRegisterMup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//SessionUsers su = new SessionUsers();
		response.setContentType("text/html; charset=UTF-8"); 
		
		//INDIVIDUAL DATA
		String userName = request.getParameter("UserName");
		String email = request.getParameter("Email");
		String password = request.getParameter("Password");
		String typeOfUser = request.getParameter("KindOfUser");
		SessionUsers su = new SessionUsers();
		boolean checkTerms = Boolean.parseBoolean(request.getParameter("CheckTerms"));
		boolean flagResponse=false; //flag to response on JSON format if the register was successfull
		if(checkTerms) {
			switch(typeOfUser) {
				case "Student":
					//DATA OF STUDENTS
					String nameStudent = request.getParameter("Names");
					String lastNameStudent = request.getParameter("LastName");
					String universityName = request.getParameter("UniversityName");
					String status = request.getParameter("Status");
					String academicArea = request.getParameter("StudyArea");
					Object dataStudent[]= {
							userName, email, password,typeOfUser,
							//DATA STUDENTS
							nameStudent, lastNameStudent, universityName, academicArea, status 
					};
					Querys queryEntityStudent = QuerysEntityFactory.buildEntityQuery(TypeEntity.USER);
					try {
						flagResponse = queryEntityStudent.InsertQueryPrepare(dataStudent);
						String message = (flagResponse)? "Successfull Registration": "Error on register, try again";
						String jSonMessage=
						"{ "
							+"\"dataRegister\":{"
								+ "\"Message\":\""+message+"\","
								+ "\"NameUser\":\""+userName+"\","
								+ "\"status\":"+flagResponse
							+ "}"
						+ "}";
						response.getWriter().append(jSonMessage);
					} catch (SQLException e) {
						e.getMessage();
					}
				break;
				case "Company":
					//DATA OF COMPANY
					String companyName = request.getParameter("companyName");
					String contactName = request.getParameter("ContactName");
					String businessField = request.getParameter("businessField");
					String kindOfCompany = request.getParameter("kindOfCompany");
					Object dataCompany[]= {
							userName, email, password, typeOfUser,
							//DATA OF COMPANY
							companyName, contactName, businessField, kindOfCompany
					};
					Querys queryEntityCompany = QuerysEntityFactory.buildEntityQuery(TypeEntity.USER);
					try {
						flagResponse = queryEntityCompany.InsertQueryPrepare(dataCompany);
						String message = (flagResponse)? "Successfull Registration": "Error on register, try again";
						String jSonMessage=
						"{ "
							+"\"dataRegister\":{"
								+ "\"Message\":\""+message+"\","
								+ "\"NameUser\":\""+userName+"\","
								+ "\"status\":"+flagResponse
							+ "}"
						+ "}";
						response.getWriter().append(jSonMessage);
					} catch (SQLException e) {
						e.getMessage();
					}
				break;
				default:
					
				break;
			}
		}else {
			String message = "Plase acept terms and conditions";
			String jSonMessage=
				"{ "
					+"\"dataRegister\":{"
						+ "\"Message\":\""+message+"\","
						+ "\"NameUser\":\""+userName+"\","
						+ "\"status\":"+flagResponse
					+ "}"
				+ "}";
			response.getWriter().append(jSonMessage);
		}
		
		/*String message=(checkTerms)? "Success on register": "Error";
		response.setContentType("text/html; charset=UTF-8");  		
		String jSonMessage=
			"{ "
				+"\"dataRegister\":{"
	    			+ "\"Message\":\""+message+"\","
	    			+ "\"NameUser\":\""+userName+"\","
	    			+ "\"Email\":\""+email+"\","
	    			+ "\"Names\":\""+password+"\","
	    			+ "\"LastName\":\""+lastNameStudent+"\","
	    			+ "\"UniversityName \":\""+universityName+"\","
	    			+ "\"FederalEntity\":\""+federalEntity+"\","
	    			+ "\"Country\":\""+country+"\","
	    			+ "\"Status\":\""+status+"\","
	    			+ "\"AcademicArea\":\""+academicArea+"\","
	    			+ "\"KindOfUser\":\""+typeOfUser+"\","
	    			+ "\"status\":"+checkTerms
				+ "}"
			+ "}";
			System.out.println(jSonMessage);
			response.getWriter().append(jSonMessage); 
		*/
	}

}
