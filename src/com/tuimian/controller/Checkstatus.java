package com.tuimian.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.domain.List;
import com.tuimian.domain.Status;
import com.tuimian.service.Kaoshengservice;

/**
 * Servlet implementation class Checkstatus
 */
@WebServlet("/Checkstatus")
public class Checkstatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Checkstatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String k_id=request.getParameter("k_id");
		ArrayList<Status> s=new ArrayList<>();
		Kaoshengservice ks=new Kaoshengservice();
		s=ks.viewstatus(k_id);
		request.setAttribute("k_id", k_id);
		request.setAttribute("s", s);
		request.getRequestDispatcher("/WEB-INF/code/statusView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
