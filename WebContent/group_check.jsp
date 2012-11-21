<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String groupname = request.getParameter("groupname");
	String count = request.getParameter("count");
	String money = request.getParameter("money");
	String terms = request.getParameter("terms");
	String point = request.getParameter("point");
	String mail = request.getParameter("mail");

	System.out.println(groupname);
	System.out.println(count);
	System.out.println(money);
	System.out.println(terms);
	System.out.println(point);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>
		<u>登録内容確認画面</u>
	</h2>
	<%
out.println("<table border=1>");

	out.println("<tr><td>グループ名</td><td>"+groupname+"</td></tr>");
	out.println("<tr><td>店舗数</td><td>"+count+"</td></tr>");
// 	out.println("<tr><td>代表店舗</td><td>"++"</td></tr>");
// 	out.println("<tr><td>店舗ID</td><td>"+phonenumber+"</td></tr>");
	out.println("<tr>円<td></td><td>"+money+"</td></tr>");
	out.println("<tr><td>条件</td><td>"+terms+"</td></tr>");
	out.println("<tr><td>ポイント数</td><td>"+point+"</td></tr>");

out.println("</table>");

out.println("<form action="+"./groupnext"+" style="+"display: inline"+">");
out.println("<input type = hidden name = groupname value = " +groupname  + ">");
out.println("<input type = hidden name = count value = " + count +" >");
//out.println("<input type = hidden name = mail value = " + mail + ">");
//out.println("<input type = hidden name = mail value = " + mail + ">");
out.println("<input type = hidden name = money value = " + money +" >");
out.println("<input type = hidden name = terms value = " + terms +" >");
out.println("<input type = hidden name = point value = " + point +">");
out.println("<input type = hidden name = mail value = " + mail + ">");
out.println("<input type = submit value = 確定 >");
out.println("</form>");
%>

</body>
</html>