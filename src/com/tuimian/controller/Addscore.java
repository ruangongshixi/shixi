package com.tuimian.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.domain.Activity;
import com.tuimian.domain.Adminscore;
import com.tuimian.service.Activityservice;
import com.tuimian.service.Adminservice;

/**
 * Servlet implementation class Addscore
 */
@WebServlet("/Addscore")
public class Addscore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addscore() {
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
			ArrayList<Activity> a=new ArrayList<>();
			Activityservice as=new Activityservice();
			a=as.getActivity();
			request.setAttribute("activity", a);
			request.getRequestDispatcher("/WEB-INF/code/adminview.jsp").forward(request, response);
		}else if("2".equals(type)) {
			String a_id=request.getParameter("a_id");
			ArrayList<Adminscore> a=new ArrayList<>();
			Adminservice ans=new Adminservice();
			a=ans.getscore(a_id);
			request.setAttribute("a", a);
			request.getRequestDispatcher("/WEB-INF/code/adminViewscore.jsp").forward(request, response);
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
