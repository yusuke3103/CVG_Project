<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>店舗登録</title>
</head>
<body>
<form action="./store_check.jsp" method="post">
<h2><u>登録画面</u></h2>
<table>
<tr><td>店舗名</td><td><input type = text name = storename ></td></tr>
<tr><td>パスワード</td><td><input type = text name = passwd ></td></tr>
<tr><td>住所</td><td><input type = text name = address ></td></tr>
<tr><td>電話番号</td><td><input type = text name = phonenumber ></td></tr>
<tr><td>メールアドレス</td><td><input type = text name = mail></td></tr>
<tr><td></td><td align = right><input type = submit value = 確認 ><input type = "reset" value = リセット ></td></tr>
</table>

</form>
</body>
</html>