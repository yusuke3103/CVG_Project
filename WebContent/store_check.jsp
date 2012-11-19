<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String storename = request.getParameter("storename");
    String passwd = request.getParameter("passwd");
    String address = request.getParameter("address");
    String phonenumber = request.getParameter("phonenumber");
    String id = phonenumber.substring(phonenumber.length()-5);
	String mail = request.getParameter("mail");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2><u>登録内容確認画面</u></h2>
<%
out.println("<table border=1>");

	out.println("<tr><td>店舗名</td><td>"+storename+"</td></tr>");
	out.println("<tr><td>パスワード</td><td>"+passwd+"</td></tr>");
	out.println("<tr><td>住所</td><td>"+address+"</td></tr>");
	out.println("<tr><td>電話番号</td><td>"+phonenumber+"</td></tr>");

out.println("</table>");

out.println("<form action="+"./Store_regist"+" style="+"display: inline"+">");
out.println("<input type = hidden name = id value = " + id + ">");
out.println("<input type = hidden name = storename value = " + storename +" >");
out.println("<input type = hidden name = passwd value = " + passwd +" >");
out.println("<input type = hidden name = address value = " + address +" >");
out.println("<input type = hidden name = phonenumber value = " + phonenumber +">");
out.println("<input type = hidden name = mail value = " + mail + ">");
out.println("<input type = submit value = 確定 >");
out.println("</form>");
%>
<form action="./store_regist.jsp" style="display: inline">
	<input type = submit value = 戻る >
</form>

</body>
</html>