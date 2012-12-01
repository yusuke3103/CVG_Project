package cvg_project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/Coupon_confirm")
public class Coupon_confirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Coupon_confirm() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		String sql = "select * from t_coupon where id = \""+id+"\";";
		System.out.println(sql);
		
		try{
			
			Connection con = DBManager.getConnection();
			Statement stm = con.createStatement();
			
			try{
			int res = stm.executeUpdate(sql);
			HttpSession ses = request.getSession();
			ses.setAttribute("res", res);
			System.out.println(res);
			}catch (Exception ex){
				ex.printStackTrace();
			}
			stm.close();

		}catch (SQLException e){
			e.printStackTrace();
		}
		response.sendRedirect("coupon_confirm.jsp");
	}
}
