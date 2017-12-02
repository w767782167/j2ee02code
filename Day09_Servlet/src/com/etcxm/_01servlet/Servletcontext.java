package com.etcxm._01servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/context")
public class Servletcontext extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		String initPara = req.getServletContext().getInitParameter("encoding");
		System.out.println(initPara);
		getServletContext();
		//在servlet中使用
		System.out.println(getServletContext());
		//在非servlet中使用
		System.out.println(req.getServletContext());
		
		System.out.println(req.getSession().getServletContext());
		
		String realPath = getServletContext().getRealPath("WebRoot/index.jsp");
		PrintWriter out= resp.getWriter();
		out.print(realPath);
		//getParameter()用于获取用户输入的信息，是用户使用
		//getAttribute()用于获取共享数据，是程序员使用
	}
}
