package com.tuimian.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.domain.Checkinfo;
import com.tuimian.service.Adminservice;

/**
 * Servlet implementation class Viewlist
 */
@WebServlet("/Viewlist")
public class Viewlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewlist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a_id=request.getParameter("id");
		Adminservice as=new Adminservice();
		ArrayList<Checkinfo> c=as.CheckInfo(Integer.parseInt(a_id));
		request.setAttribute("Checkinfo", c);
		request.getRequestDispatcher("/WEB-INF/code/checkInfo.jsp?a_id="+a_id).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
