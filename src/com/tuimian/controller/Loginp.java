package com.tuimian.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.domain.Activity;
import com.tuimian.domain.Admin;
import com.tuimian.domain.Kaosheng;
import com.tuimian.service.Activityservice;
import com.tuimian.service.Adminservice;
import com.tuimian.service.Kaoshengservice;

/**
 * Servlet implementation class Loginp
 */
@WebServlet("/Loginp")
public class Loginp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginp() {
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
		String type=request.getParameter("t");
		//System.out.println(type);
		if("admin".equals(type)) {
			Admin admin=new Admin();
			admin.setId(request.getParameter("id"));
			admin.setPassword(request.getParameter("password"));
			Adminservice adminservice=new Adminservice();
			if(adminservice.checkAdmin(admin)) {
				ArrayList<Activity> ac=adminservice.getActivity();
				request.setAttribute("activity", ac);
				request.getRequestDispatcher("/WEB-INF/code/adminNavigation.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("/WEB-INF/code/error.jsp?error=id或者密码输入错误，请重新输入！").forward(request, response);
			}
		}else if("kaosheng".equals(type)){
			Kaosheng k=new Kaosheng();
			k.setId(request.getParameter("id"));
			k.setPassword(request.getParameter("password"));
			//System.out.println(k.getPassword());
			Kaoshengservice ks=new Kaoshengservice();
			if(ks.checkKaosheng(k)) {
				request.setAttribute("id", k.getId());
				request.getRequestDispatcher("/WEB-INF/code/kaoshengMain.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("WEB-INF/code/klogin.jsp?error=loginerr").forward(request, response);
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
