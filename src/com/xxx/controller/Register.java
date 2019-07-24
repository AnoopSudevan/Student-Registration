package com.xxx.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxx.bl.StudentCRUD;
import com.xxx.model.Student;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd;
		Student newstudent = new Student();
		try {
			newstudent.setSname(request.getParameter("name"));
			newstudent.setSemail(request.getParameter("email"));
			newstudent.setSusername(request.getParameter("username"));
			String pass = request.getParameter("user-password").toString();
			String cpass = request.getParameter("confirm").toString();
			if (pass.equals(cpass)) {
				newstudent.setSpassword(pass);
				StudentCRUD C = new StudentCRUD();
				if (C.addstudent(newstudent)) {
					request.setAttribute("status", true);
					request.setAttribute("message", "Inserted successfully");
					request.setAttribute("newstudent", new Student());
				} else {
					request.setAttribute("status", true);
					request.setAttribute("message", "Not Inserted successfully");
					request.setAttribute("newstudent", newstudent);
				}
			} else {

				request.setAttribute("status", true);
				request.setAttribute("message", "Password and Confirm password doesnot match");
				request.setAttribute("newstudent", newstudent);
			}
		} catch (Exception e) {
			if (e.getMessage().contains("primary key")) {
				request.setAttribute("status", true);
				request.setAttribute("message", "Email ID Already exists");
				request.setAttribute("newstudent", newstudent);
				System.err.println(e.getMessage());
			} else {
				request.setAttribute("status", true);
				request.setAttribute("message", "Server Error contact Admin");
				request.setAttribute("newstudent", newstudent);
				System.err.println(e.getMessage());
			}

		}
		rd=request.getRequestDispatcher("views/index.jsp");
		rd.forward(request, response);	
	}

	}


