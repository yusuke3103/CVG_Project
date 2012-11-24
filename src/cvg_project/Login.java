package cvg_project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
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
		} else {
			ses.setAttribute("login", "false");
		}
		response.sendRedirect("mypage.jsp");
	}

}
