package com.tuimian.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.domain.Score;
import com.tuimian.service.Listservice;

/**
 * Servlet implementation class Viewscore
 */
@WebServlet("/Viewscore")
public class Viewscore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewscore() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String k_id=request.getParameter("k_id");
		ArrayList<Score> s=new ArrayList<>();
		Listservice ls=new Listservice();
		s=ls.getscore(k_id);
		request.setAttribute("s", s);
		request.getRequestDispatcher("/WEB-INF/code/viewscore.jsp?k_id"+k_id).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
