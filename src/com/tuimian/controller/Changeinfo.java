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
 * Servlet implementation class Changeinfo
 */
@WebServlet("/Changeinfo")
public class Changeinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Changeinfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type=request.getParameter("type");
		String k_id=request.getParameter("k_id");
		if("1".equals(type)) {
			Kaosheng k=new Kaosheng();
			Kaoshengservice ks=new Kaoshengservice();
			k=ks.getinfo(k_id);
			request.setAttribute("k", k);
			request.getRequestDispatcher("/WEB-INF/code/changeinfo.jsp").forward(request, response);
		}else if("2".equals(type)) {
			Kaosheng k=new Kaosheng();
			Kaoshengservice ks=new Kaoshengservice();
			k.setId(request.getParameter("id"));
			k.setName(request.getParameter("name"));
			k.setCollege(request.getParameter("college"));
			k.setMajor(request.getParameter("major"));
			k.setTeacher(request.getParameter("teacher"));
			k.setPassword(request.getParameter("password"));
			if(ks.changeinfo(k)) {
				request.setAttribute("id",k.getId());
				request.getRequestDispatcher("/WEB-INF/code/kaoshengMain.jsp?id").forward(request, response);
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
