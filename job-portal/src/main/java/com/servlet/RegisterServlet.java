package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBconnect;
import com.doa.UserDao;
import com.doa.jobDao;
import com.entry.Jobs;
import com.entry.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("name");
			String qua = req.getParameter("qua");
			String email= req.getParameter("email");
			String pass = req.getParameter("pass");
			

			UserDao p = new UserDao(DBconnect.getConn());
			User u = new User(name,email,pass,qua,"User");
			boolean f = p.addUser(u);
			

			HttpSession session = req.getSession();

			
			if (f) {
				session.setAttribute("succMsg", "Registration Successfully....");
				resp.sendRedirect("register.jsp");
			} else {
				session.setAttribute("succMsg", "Something wrong on Server....");
				resp.sendRedirect("register.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
