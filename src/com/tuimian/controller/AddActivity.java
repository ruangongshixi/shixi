package com.tuimian.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.domain.Activity;
import com.tuimian.service.Adminservice;
import com.tuimian.util.UtilTuimian;

/**
 * Servlet implementation class AddActivity
 */
@WebServlet("/AddActivity")
public class AddActivity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddActivity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		if(request.getParameter("type").equals("1")) {
			request.getRequestDispatcher("/WEB-INF/code/addactivity.jsp").forward(request, response);
		}else if(request.getParameter("type").equals("2")) {
			Activity ac=new Activity();
			ac.setName(request.getParameter("name"));
			ac.setStart_time(UtilTuimian.StringToDate(request.getParameter("start_time")));
			ac.setEnd_time(UtilTuimian.StringToDate(request.getParameter("end_time")));
			ac.setHolder(request.getParameter("holder"));
			ac.setContact(request.getParameter("contact"));
			ac.setBeizhu(request.getParameter("beizhu"));
			Adminservice as=new Adminservice();
			if(as.addActivity(ac)) {
				ArrayList<Activity> activity=as.getActivity();
				request.setAttribute("activity", activity);
				request.getRequestDispatcher("/WEB-INF/code/addSuccess.jsp").forward(request, response);
			}else {
				System.out.println("Ê§°Ü");
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
