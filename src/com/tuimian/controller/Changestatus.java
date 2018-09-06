package com.tuimian.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.service.Adminservice;

/**
 * Servlet implementation class Changestatus
 */
@WebServlet("/Changestatus")
public class Changestatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Changestatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String status=request.getParameter("status");
		String a_id=request.getParameter("a_id");
		String k_id=request.getParameter("k_id");
		String rs=null;
		if("pass".equals(status)) {
			rs="通过";
		}else {
			rs="未通过";
		}
		Adminservice as=new Adminservice();
		if(as.changeStatus(a_id, k_id, rs)) {
			request.getRequestDispatcher("/WEB-INF/code/changeStatussuccess.jsp?a_id="+a_id).forward(request, response);
		}else {
			request.getRequestDispatcher("/WEB-INF/code/changeStatuserror.jsp?a_id="+a_id).forward(request, response);
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
