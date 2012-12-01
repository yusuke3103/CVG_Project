<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="checklogin.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Page</title>
</head>
<body>
	<center>
		<h1><jsp:include page="getuser.jsp"/>様</h1>
		<%
			//String id = request.getParameter("id");
			HttpSession ses = request.getSession();
			String id = (String)session.getAttribute("id");
			System.out.println(id);
			//out.println("<input type = hidden name = id value = " + id + ">");
			
			String flg = (String) ses.getAttribute("login");
			String msg = null;
			if ("true".equals(flg)) {
				out.println("<form method=post>");
				out.println("<input type = hidden name = id value = " + id + ">");
				out.println("<h1>管理画面</h1><br>");
				out.println("<a href=\"./graph/use_history.jsp\">利用状況の確認</a><br>");
				out.println("<a href=\"./group_regist.jsp\">店舗間グループ登録/確認</a><br>");
				out.println("<a href=\"./coupon_regist.jsp\">クーポン発行</a><br>");
				out.println("<a href=\"./Coupon_confirm\">クーポン確認</a><br>");
				out.println("<a href=\"./bin-debug/AutoFeliCaSearch.html\">ポイント加算</a>");
				out.println("</form>");
			} else {
				out.println("<font color=\"red\">");
				out.println("ログインに失敗しました。<br>");
				out.println("メールアドレスかパスワードに不備があります。</font><hr>");
				out.println("<h1>ログイン</h1>");
				out.println("<form name=\"login\" onsubmit=\"return checkForm()\" method=\"POST\" action=\"/CVG_Project/Login\">");
				out.println("<table>");
				out.println("<tr>");
				out.println("<td>メールアドレス:</td>");
				out.println("<td><input type=\"text\" name=mail></td>");
				out.println("</tr><tr>");
				out.println("<td>パスワード:</td>");
				out.println("<td><input type=\"password\" name=passwd></td>");
				out.println("</tr><tr><td>");
				out.println("<a href=\"store_regist.jsp\">新規登録</a></td>");
				out.println("<td align = \"right\"><input type=\"submit\" value=\"ログイン\"></td></tr>");
				out.println("</table>");
				out.println("</form>");

			}
		%>
	</center>
</body>
</html>
