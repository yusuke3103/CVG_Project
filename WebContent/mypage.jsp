<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Page</title>
</head>
<body>
	<center>

		<%
			HttpSession ses = request.getSession();
			String flg = (String) ses.getAttribute("login");
			String msg = null;
			if ("true".equals(flg)) {
				out.println("<h1>管理画面</h1><br>");
				out.println("<a href=\"./check.jsp\">利用状況の確認</a><br>");
				out.println("<a href=\"./group_regist.jsp\">店舗間グループ登録/確認</a><br>");
				out.println("<a href=\"./coupon_regist.jsp\">クーポン発行/確認</a><br>");
				out.println("<a href=\"./touch_nfc.jsp\">ポイント加算</a>");
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
