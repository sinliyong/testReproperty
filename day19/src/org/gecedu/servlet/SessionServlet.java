package org.gecedu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取当前会话
		HttpSession session = request.getSession();// 如果会话不存在，那么就创建一个返回，如果会话存在，就直接返回
//		request.getSession(create);//是否创建新的会话返回  
		session.setAttribute("username", "zhangsan");
		response.getWriter().write("success_"+session.getId());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	public static void main(String[] args) {
		int a =10/0;
	}
	
}
