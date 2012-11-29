<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String groupname = request.getParameter("groupname");
	groupname = new String(groupname.getBytes("8859_1"), "UTF-8");
	String count = request.getParameter("count");
	String delegation = request.getParameter("delegation");
	String groupid = request.getParameter("groupid");
	String tenpo1 = request.getParameter("tenpo1");
	String tenpo2 = request.getParameter("tenpo2");
	String money = request.getParameter("money");
	String terms = request.getParameter("terms");
	terms = new String(terms.getBytes("8859_1"), "UTF-8");
	String point = request.getParameter("point");
	String r_s = request.getParameter("r_s");
	String r_e = request.getParameter("r_e");
	String r_tokuten = request.getParameter("r_tokuten");
	r_tokuten = new String(r_tokuten.getBytes("8859_1"), "UTF-8");
	String s_s = request.getParameter("s_s");
	String s_e = request.getParameter("s_e");
	String s_tokuten = request.getParameter("s_tokuten");
	s_tokuten = new String(s_tokuten.getBytes("8859_1"), "UTF-8");
	String g_s = request.getParameter("g_s");
	String g_e = request.getParameter("g_e");
	String g_tokuten = request.getParameter("g_tokuten");
	g_tokuten = new String(g_tokuten.getBytes("8859_1"), "UTF-8");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録内容確認画面</title>
</head>
<body>
	<h2>
		<u>登録内容確認画面</u>
	</h2>
	<%
out.println("<table border=1>");

	out.println("<tr><td>グループ名</td><td>"+groupname+"</td></tr>");
 	out.println("<tr><td>グループID</td><td>"+groupid+"</td></tr>");
	out.println("<tr><td>店舗数</td><td>"+count+"</td></tr>");
 	out.println("<tr><td>代表店舗ID</td><td>"+delegation+"</td></tr>");
 	out.println("<tr><td>店舗ID1</td><td>"+tenpo1+"</td></tr>");
 	out.println("<tr><td>店舗ID2</td><td>"+tenpo2+"</td></tr>");
	out.println("<tr><td>ポイント内容</td><td>"+money+"<a>円</a>"+terms+""+point+"<a>ポイント付与</a></td></tr>");
	out.println("<tr><td>レギュラーポイント範囲</td><td>"+r_s+"<a>~</a>"+r_e+"</td></tr>");
	out.println("<tr><td>レギュラー特典</td><td>"+r_tokuten+"</td></tr>");
	out.println("<tr><td>シルバーポイント範囲</td><td>"+s_s+"~"+s_e+"</td></tr>");
	out.println("<tr><td>シルバー特典</td><td>"+s_tokuten+"</td></tr>");
	out.println("<tr><td>ゴールドポイント範囲</td><td>"+g_s+"~"+g_e+"</td></tr>");
	out.println("<tr><td>ゴールド特典</td><td>"+g_tokuten+"</td></tr>");
out.println("</table>");

out.println("<form action=\"./Group_add\" method=post style=\"display: inline\">");
out.println("<input type = hidden name = groupname value = " +groupname  + ">");
out.println("<input type = hidden name = groupid value = " + groupid + ">");
out.println("<input type = hidden name = count value = " + count +" >");
out.println("<input type = hidden name = delegation value = " + delegation + ">");
out.println("<input type = hidden name = tenpo1 value = " + tenpo1 + ">");
out.println("<input type = hidden name = tenpo2 value = " + tenpo2 + ">");
out.println("<input type = hidden name = money value = " + money +" >");
out.println("<input type = hidden name = terms value = " + terms +" >");
out.println("<input type = hidden name = point value = " + point +">");
out.println("<input type = hidden name = r_s value = " + r_s + ">");
out.println("<input type = hidden name = r_e value = " + r_e + ">");
out.println("<input type = hidden name = r_tokuten value = " + r_tokuten + ">");
out.println("<input type = hidden name = s_s value = " + s_s + ">");
out.println("<input type = hidden name = s_e value = " + s_e + ">");
out.println("<input type = hidden name = s_tokuten value = " + s_tokuten + ">");
out.println("<input type = hidden name = g_s value = " + g_s + ">");
out.println("<input type = hidden name = g_e value = " + g_e + ">");
out.println("<input type = hidden name = g_tokuten value = " + g_tokuten + ">");
out.println("<input type = submit value = 確定 >");
out.println("</form>");
%>

</body>
</html>