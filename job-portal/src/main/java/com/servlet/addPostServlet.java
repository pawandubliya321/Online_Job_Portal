package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBconnect;
import com.doa.jobDao;
import com.entry.Jobs;

@WebServlet("/addPostServlet")
public class addPostServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String title = req.getParameter("title");
			String location = req.getParameter("location");
			String category = req.getParameter("category");
			String status = req.getParameter("status");
			String desc = req.getParameter("desc");

			Jobs j = new Jobs();
			j.setTitle(title);
			j.setLocation(location);
			j.setCategory(category);
			j.setStatus(status);
			j.setDescription(desc);

			HttpSession session = req.getSession();

			jobDao dao = new jobDao(DBconnect.getConn());
			boolean f = dao.addJobs(j);

			if (f) {
				session.setAttribute("succMsg", "Job Post Successfully....");
				resp.sendRedirect("add_jobs.jsp");
			} else {
				session.setAttribute("succMsg", "Something wrong on Server....");
				resp.sendRedirect("add_jobs.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
