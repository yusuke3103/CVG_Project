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
		<h1>
			<%
				HttpSession ses = request.getSession();
				String flg = (String) ses.getAttribute("login");
				String msg = null;
				if ("true".equals(flg)) {
					out.println("管理画面");
					out.println("<a href=\"./check.jsp\">利用状況の確認</a><br>");
					out.println("<a href=\"./group_regist.jsp\">店舗間グループ登録/確認</a><br>");
					out.println("<a href=\"./group_regist.jsp\">店舗間グループ登録/確認</a><br>");
					out.println("<a href=\"./coupon_regist.jsp\">クーポン発行/確認</a><br>");
					out.println("<a href=\"./touch_nfc.jsp\">ポイント加算</a>");
				}else{
					out.println("ログインに失敗しました。");
					out.println("<h2>メールアドレスかパスワードに不備があります。</h2>");
					out.println("<h1>ログイン</h1>");
				}
			%>
		</h1>
	</center>
</body>
</html>
