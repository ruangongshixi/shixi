package com.tuimian.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuimian.domain.List;
import com.tuimian.service.Listservice;

/**
 * Servlet implementation class AddList
 */
@WebServlet("/AddList")
public class AddList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List list=new List();
		request.setAttribute("id", request.getParameter("k_id"));
		list.setA_id(request.getParameter("a_id"));
		list.setK_id(request.getParameter("k_id"));
		Listservice ls=new Listservice();
		if(ls.addList(list)) {
			request.getRequestDispatcher("/WEB-INF/code/addlistsuccess.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/WEB-INF/code/addlisterr.jsp").forward(request, response);
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
