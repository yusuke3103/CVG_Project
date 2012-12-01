package cvg_project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/Coupon_add")
public class Coupon_add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Coupon_add() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String content = request.getParameter("text");
		String s_date = request.getParameter("s_date");
		String s_month = request.getParameter("s_month");
//		String s_day = request.getParameter("s_day");
		String s_time = request.getParameter("s_time");
		String e_date = request.getParameter("e_date");
		String e_month = request.getParameter("e_month");
//		String e_day = request.getParameter("e_day");
		String e_time = request.getParameter("e_time");
		String send3 = request.getParameter("send3");

		
		String sql = "insert into t_coupon (id, name, content, s_datetime, e_datetime, send) values( \""+id+"\", \""+name+"\", \""+content+"\", '"+s_date+" "+s_month+":00', '"+e_date+" "+e_month+" ,"+send3+");";
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
		response.sendRedirect("coupon_add_check.jsp");
	}
}