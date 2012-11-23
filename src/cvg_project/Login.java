package cvg_project;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPOST(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException,
			ClassNotFoundException {
		request.setCharacterEncoding("UTF-8");
		String mail = request.getParameter("mail");
		String pass = request.getParameter("passwd");
		System.out.println(mail);
		System.out.println(pass);
		boolean flg = false;
		try {
			Connection con = cvg_project.DBManager.getConnection();
			Statement stm = con.createStatement();
			ResultSet rs = stm
					.executeQuery("select * from t_store where mail = \""
							+ mail + "\"");
			if (rs.next()) {
				if (rs.getString("password").equals(pass)) {
					flg = true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		HttpSession ses = request.getSession();
		if (flg) {
			ses.setAttribute("login", "true");
			ses.setAttribute("mail", mail);
		} else {
			ses.setAttribute("login", "false");
		}
		response.sendRedirect("mypage.jsp");
	}
}