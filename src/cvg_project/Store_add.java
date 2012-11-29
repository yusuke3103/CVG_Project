package cvg_project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;



@WebServlet("/Store_add")
public class Store_add extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Store_add(){
		super();
	}
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,IOException{

	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		request.setCharacterEncoding("UTF-8");
		String storename = request.getParameter("storename");
		String passwd = request.getParameter("passwd");
		String zipcode = request.getParameter("zipcode");
		String pref = request.getParameter("pref");
//		pref = new String(pref.getBytes("8859_1"), "UTF-8");
		String addr = request.getParameter("addr");
//		addr = new String(addr.getBytes("8859_1"), "UTF-8");
		String addr2 = request.getParameter("addr2");
//		addr2 = new String(addr2.getBytes("8859_1"), "UTF-8");
		String phonenumber = request.getParameter("phonenumber");
		String mail = request.getParameter("mail");
	
		System.out.println(storename);
		System.out.println(passwd);
		System.out.println(zipcode);
		System.out.println(pref);
		System.out.println(addr);
		System.out.println(addr2);
		System.out.println(phonenumber);
		System.out.println(mail);
		
		String sql = "insert into t_store values( \""+ mail + "\",\""+ storename+ "\", \""+ passwd + "\", "+ zipcode +", \""+ pref+ "\", \""+ addr + "\", \""+ addr2 + "\", "+ phonenumber +");";
		System.out.println(sql);
	try{
		
		Connection con = DBManager.getConnection();
		Statement stm = con.createStatement();
		
		try{
		int res = stm.executeUpdate(sql);
		System.out.println(res);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		stm.close();

	}catch (SQLException e){
		e.printStackTrace();
	}
	response.sendRedirect("");
}
}

