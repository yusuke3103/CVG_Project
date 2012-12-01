package cvg_project;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest req,
			HttpServletResponse res)
			throws ServletException, IOException {
		String id = req.getParameter("mail");
		HttpSession session = req.getSession();
        session.setAttribute("id", id);
//        RequestDispatcher rd = req.getRequestDispatcher("./GetData");
//        rd.forward(req, res);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		/*Å@idÇÃéÊÇËèoÇµ 
		PrintWriter out = response.getWriter();
		String id = request.getParameter("mail");
		out.println("<form method=\"POST\" action = \"/CVG_Project/mypage.jsp\">");
		out.println("<input type = hidden name = \"id\" value = \"" + id + "\">");
		out.println("</form>");
		*/
		String id = request.getParameter("mail");
		String pass = request.getParameter("passwd");
		System.out.println(id);
		System.out.println(pass);

		boolean flg = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = cvg_project.DBManager.getConnection();
			Statement stm = con.createStatement();
			ResultSet rs = stm
					.executeQuery("select * from t_store where mail=\"" + id + "\"");
			if (rs.next()) {
				if (rs.getString("password").equals(pass)) {
					flg = true;
				}
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		HttpSession ses = request.getSession();
		if (flg) {
			ses.setAttribute("login", "true");
			ses.setAttribute("mail", id);
			ses.setAttribute("id", id);
		} else {
			ses.setAttribute("login", "false");
		}
		response.sendRedirect("mypage.jsp");
		
	}
	
}
