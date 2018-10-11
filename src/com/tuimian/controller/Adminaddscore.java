package com.tuimian.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.domain.Adminscore;
import com.tuimian.service.Adminservice;

/**
 * Servlet implementation class Adminaddscore
 */
@WebServlet("/Adminaddscore")
public class Adminaddscore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminaddscore() {
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
			request.setAttribute("a_id", request.getParameter("a_id"));
			request.setAttribute("k_id", request.getParameter("k_id"));
			request.getRequestDispatcher("/WEB-INF/code/adminaddscore.jsp").forward(request, response);
		}else if("2".equals(type)) {
			double score=Double.parseDouble(request.getParameter("score"));
			String a_id=request.getParameter("a_id");
			String k_id=request.getParameter("k_id");
			Adminservice as=new Adminservice();
			if(as.addscore(a_id, k_id, score)) {
				ArrayList<Adminscore> a=new ArrayList<>();
				Adminservice ans=new Adminservice();
				a=ans.getscore(a_id);
				request.setAttribute("a", a);
				request.getRequestDispatcher("/WEB-INF/code/adminViewscore.jsp").forward(request, response);
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
