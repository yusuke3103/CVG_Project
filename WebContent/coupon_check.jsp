<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	name = new String(name.getBytes("8859_1"), "UTF-8");
	String s_year = request.getParameter("s_year");
	String s_month = request.getParameter("s_month");
	String s_day = request.getParameter("s_day");
	String s_time = request.getParameter("s_time");
	String e_year = request.getParameter("e_year");
	String e_month = request.getParameter("e_month");
	String e_day = request.getParameter("e_day");
	String e_time = request.getParameter("e_time");
	String send1 = request.getParameter("send1");
	String send2 = request.getParameter("send2");
//	send = new String(send.getBytes("8859_1"), "UTF-8");
//	String[] rank = request.getParameterValues("rank");
//	StringBuffer text = new StringBuffer(request.getParameter("content"));
//	request.setCharacterEncoding("UTF-8");
	String text = request.getParameter("content");
	text = new String(text.getBytes("8859_1"), "UTF-8");
//	int loc = (new String (text)).indexOf('\n');
//	while(loc>0){
//			text.replace(loc, loc+1, "<BR>");
//			loc=(new String(text)).indexOf('\n');
//	}
	int okurisaki = Integer.valueOf(send1);
	int rank = Integer.valueOf(send2);
	int send3 = okurisaki + rank;
	Integer.toString(send3);

//	System.out.println(rank);
//	System.out.println(send3);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>クーポン確認画面</title>
</head>
<body>
	<h2>
		<u>登録内容確認画面</u>
	</h2>
	<%
//System.out.println(send3);
out.println("<table border=1>");
out.println("<tr><td>管理者ID</td><td>"+id+"</td></tr>");
out.println("<tr><td>クーポン名</td><td>"+name+"</td></tr>");
out.println("<tr><td>クーポン内容</td><td>"+text+"</td></tr>");
out.println("<tr><td>開始日</td><td>"+s_year+"年"+s_month+"月"+s_day+"日"+s_time+"時"+"</td></tr>");
out.println("<tr><td>終了日</td><td>"+e_year+"年"+e_month+"月"+e_day+"日"+e_time+"時"+"</td></tr>");
out.println("<tr><td>配信先</td><td>"+send3+"</td></tr>");
out.println("</table>");

out.println("<form action=\"./Coupon_add\" method= post>");
out.println("<input type = hidden name = id value = " + id + ">");
out.println("<input type = hidden name = name value = " + name + ">");
out.println("<input type = hidden name = text value = " + text + ">");
out.println("<input type = hidden name = s_date value = " + s_year +"-" + s_month + "-" + s_day +" >");
 out.println("<input type = hidden name = s_month value = " + s_time +" >");
// out.println("<input type = hidden name = s_day = " + s_day +" >");
 out.println("<input type = hidden name = s_time = " + s_time + " >");
 out.println("<input type = hidden name = e_date value = " + e_year +"-" + e_month + "-" + e_day +" >");
 out.println("<input type = hidden name = e_month value = " + e_time +":00' >");
// out.println("<input type = hidden name = e_day = " + e_day +" >");
out.println("<input type = hidden name = e_time = " + e_time + " >");
out.println("<input type = hidden name = send3  value = " + send3 + " >");

out.println("<input type = submit value = 確定 >");
out.println("</form>");
%>
	<form action="./coupon_regist.jsp" style="display: inline">
		<input type=submit value=戻る>
	</form>

</body>
</html>