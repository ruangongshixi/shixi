package com.tuimian.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.domain.Kaosheng;
import com.tuimian.service.Kaoshengservice;

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
		String type=request.getParameter("type");
		if("1".equals(type)) {
			request.getRequestDispatcher("/WEB-INF/code/register.jsp").forward(request, response);
		}else if("2".equals(type)) {
			Kaoshengservice ks=new Kaoshengservice();
			Kaosheng k=new Kaosheng();
			k.setId(request.getParameter("id"));
			k.setCollege(request.getParameter("college"));
			k.setMajor(request.getParameter("major"));
			k.setName(request.getParameter("name"));
			k.setTeacher(request.getParameter("teacher"));
			k.setPassword(request.getParameter("password"));
			if(ks.register(k)) {
				request.getRequestDispatcher("/WEB-INF/code/klogin.jsp?error=no").forward(request, response);
			}else {
				request.getRequestDispatcher("/WEB-INF/code/klogin.jsp?error=zhuceshibai").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
