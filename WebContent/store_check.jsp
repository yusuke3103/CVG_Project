<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String storename = request.getParameter("storename");
	storename = new String(storename.getBytes("8859_1"),"UTF-8");
    String passwd = request.getParameter("pass2");
    String zipcode = request.getParameter("zipcode");
    String pref = request.getParameter("pref");
	pref = new String(pref.getBytes("8859_1"), "UTF-8");
    String addr = request.getParameter("addr");
	addr = new String(addr.getBytes("8859_1"), "UTF-8");
    String addr2 = request.getParameter("addr2");
	addr2 = new String(addr2.getBytes("8859_1"), "UTF-8");
    String phonenumber = request.getParameter("phonenumber");
	String mail = request.getParameter("mail");
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

	out.println("<tr><td>店舗名</td><td>"+storename+"</td></tr>");
	out.println("<tr><td>パスワード</td><td>"+passwd+"</td></tr>");
	out.println("<tr><td>郵便番号</td><td>"+zipcode+"</td></tr>");
	out.println("<tr><td>都道府県</td><td>"+pref+"</td></tr>");
	out.println("<tr><td>市区町村</td><td>"+addr+"</td></tr>");
	out.println("<tr><td>ビル名/建物名</td><td>"+addr2+"</td></tr>");
	out.println("<tr><td>電話番号</td><td>"+phonenumber+"</td></tr>");
	out.println("<tr><td>メールアドレス</td><td>"+mail+"</td></tr>");

out.println("</table>");

out.println("<form action=\"./Store_add\" method= post>");
out.println("<input type = hidden name = storename value = " + storename + ">");
out.println("<input type = hidden name = passwd value = " + passwd +" >");
out.println("<input type = hidden name = zipcode value = " + zipcode +" >");
out.println("<input type = hidden name = pref value = " + pref +" >");
out.println("<input type = hidden name = addr value = " + addr +" >");
out.println("<input type = hidden name = addr2 value = " + addr2 +" >");
out.println("<input type = hidden name = phonenumber value = " + phonenumber +">");
out.println("<input type = hidden name = mail value = " + mail + ">");
out.println("<input type = submit value = 確定 >");
out.println("</form>");
%>
	<form action="./store_regist.jsp" style="display: inline">
		<input type=submit value=戻る>
	</form>

</body>
</html>