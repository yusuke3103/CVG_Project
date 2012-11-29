package cvg_project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Group_add")
public class Group_add extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Group_add(){
		super();
	}
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,IOException{

	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		request.setCharacterEncoding("UTF-8");
		String groupname = request.getParameter("groupname");
//		groupname = new String(groupname.getBytes("8859_1"), "UTF-8");
		String count = request.getParameter("count");
		String delegation = request.getParameter("delegation");
		String groupid = request.getParameter("groupid");
		String tenpo1 = request.getParameter("tenpo1");
		String tenpo2 = request.getParameter("tenpo2");
		String money = request.getParameter("money");
		String terms = request.getParameter("terms");
//		terms = new String(terms.getBytes("8859_1"), "UTF-8");
		String point = request.getParameter("point");
		String r_s = request.getParameter("r_s");
		String r_e = request.getParameter("r_e");
		String r_tokuten = request.getParameter("r_tokuten");
//		r_tokuten = new String(r_tokuten.getBytes("8859_1"), "UTF-8");
		String s_s = request.getParameter("s_s");
		String s_e = request.getParameter("s_e");
		String s_tokuten = request.getParameter("s_tokuten");
//		s_tokuten = new String(s_tokuten.getBytes("8859_1"), "UTF-8");
		String g_s = request.getParameter("g_s");
		String g_e = request.getParameter("g_e");
		String g_tokuten = request.getParameter("g_tokuten");
//		g_tokuten = new String(g_tokuten.getBytes("8859_1"), "UTF-8");
		
		System.out.println(groupname);
		System.out.println(count);
		System.out.println(delegation);
		System.out.println(groupid);
		System.out.println(money);
		System.out.println(terms);
		System.out.println(point);
		System.out.println(r_s);
		System.out.println(r_e);
		System.out.println(r_tokuten);
		System.out.println(s_s);
		System.out.println(s_e);
		System.out.println(s_tokuten);
		System.out.println(g_s);
		System.out.println(g_e);
		System.out.println(g_tokuten);
		
		String sql1 = "insert into t_group values( \""+groupid+"\",\""+groupname+"\", "+count+", \""+delegation+"\","+money+", \""+terms+"\", "+point+", "+r_s+", "+r_e+", \""+r_tokuten+"\", "+s_s+", "+s_e+", \""+ s_tokuten +"\", "+g_s+", "+g_e+", \""+g_tokuten+"\");";
		System.out.println(sql1);
		
		String sql2 = "insert into t_group_id values( \""+ groupid +"\",\""+tenpo1+ ");";
		System.out.println(sql2);
		
		try{
			
			Connection con = DBManager.getConnection();
			Statement stm = con.createStatement();
			
			try{
			int res = stm.executeUpdate(sql1);
			int res2 = stm.executeUpdate(sql1);
			System.out.println(res);
			System.out.println(res2);
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