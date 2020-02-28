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
		
		//INDIVIDUAL DATA
		String userName = request.getParameter("UserName");
		String email = request.getParameter("Email");
		String password = request.getParameter("Password");
		String typeOfUser = request.getParameter("KindOfUser");
		boolean checkTerms = Boolean.parseBoolean(request.getParameter("CheckTerms"));
		String acceptTerms=(checkTerms)? "1" : "0";
		boolean flagResponse=false;
		switch(typeOfUser) {
			case "Student":
				//DATA OF STUDENTS
				String nameStudent = request.getParameter("Names");
				String lastNameStudent = request.getParameter("LastName");
				String universityName = request.getParameter("UniversityName");
				String federalEntity = request.getParameter("FederalEntity");
				String country = request.getParameter("Country");
				String status = request.getParameter("Status");
				String academicArea = request.getParameter("AcademicArea");
				Object dataStudent[]= {
						userName, email, password,typeOfUser, acceptTerms,
						//DATA STUDENTS
						nameStudent, lastNameStudent, universityName, federalEntity,
						country, status, academicArea
				};
				Querys queryEntity = QuerysEntityFactory.buildEntityQuery(TypeEntity.USER);
				try {
					flagResponse = queryEntity.InsertQueryHibernate(dataStudent);
					String message=(flagResponse)? "Success on register": "Error";
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
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			break;
			case "Company":
				
			break;
			default:
				
			break;
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
