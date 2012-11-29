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
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String s_year = request.getParameter("s_year");
		String s_month = request.getParameter("s_month");
		String s_date = request.getParameter("s_date");
		String s_time = request.getParameter("s_time");
		String e_year = request.getParameter("e_year");
		String e_month = request.getParameter("e_month");
		String e_date = request.getParameter("e_date");
		String e_time = request.getParameter("e_time");
		String send = request.getParameter("send");
		String rank = request.getParameter("rank");
		
//		try{
			Connection con = DBManager.getConnection();
			Statement stm = con.createStatement();
//			try{
				//int res = stm.executeUpdate("insert into t_coupon set \"" + name + "\,")
//			}
//		}catch
	}
}