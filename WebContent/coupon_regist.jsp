<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action= "./coupon_regist.jsp">
<table>
	<tr><td>クーポン名</td><td><input type = text name = name></td></tr>
	<tr><td>クーポン内容</td><td><input type = textarea name = content></td></tr>
</table>
<h2>有効期限</h2>
<table>
	<tr><td><input type = text name = s_year></td><td>年</td><td><input type = num >s_month </tr></table>
	
	
	
	</form>薄井君へヒント！
わからなければ、作れそうな部分だけ作ってあとは、置いといて！
使い方はこちら-http://www.ahref.org/hinagata/form_all.html
クーポン名：text
クーポン内容：textarea
有効期限
年:text
月:メニュー
日:メニュー？TEXTでもいいや
時:メニュー？TEXTでもいいや
配信先
全員、利用履歴あり、グループ利用。。。もチェックボックスでOK

利用履歴ありー＞レギュラーとかの name は s_regu　とかにした方がわかりやすいかも、、、





=======
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./coupon_check.jsp">
		<table>
			<tr>
				<td>クーポン名</td>
				<td><input type=text name=name></td>
			</tr>
			<tr>
				<td>クーポン内容</td>
				<td><textarea name=content cols="40" rows=4></textarea></td>
			</tr>
		</table>
		<h2>有効期限</h2>
		<table>
			<tr>
				<td><input type=text name=s_year></td>
				<td>年</td>
				<td><input type="number" name=s_month width="2" min="1"
					max="12"></td>
				<td>月</td>
				<td><input type="number" name=s_day width="2" min="1" max="31">
				<td>日</td>
				<td><input type="number" name=s_time width="2" min="0" max="23">
				<td>時</td>
			</tr>
			<tr>
				<td align=center>｜</td>
			</tr>
			<tr>
				<td><input type=text name=e_year></td>
				<td>年</td>
				<td><input type="number" name=e_month width="2" min="1"
					max="12"></td>
				<td>月</td>
				<td><input type="number" name=e_day width="2" min="1" max="31">
				<td>日</td>
				<td><input type="number" name=e_time width="2" min="0" max="23">
				<td>時</td>
		</table>
		<h2>配信先</h2>
		<table>
			<tr>
				<td><input type="radio" name=send value="全員">全員</td>
				<td><input type="radio" name=send value="店舗利用者">店舗利用者</td>
				<td><input type="radio" name=send value="グループ利用者">グループ利用者</td>
			</tr>
		</table>
		<table>	
			<tr>
				<td></td>
				<td><input type=checkbox name=s_rank value="レギュラー">レギュラー</td>
			</tr>
			<tr>
				<td></td><td><input type=checkbox name=g_rank value="シルバー">シルバー</td>
			</tr>
			<tr>
				<td></td><td><input type=checkbox name=g_rank value="ゴールド">ゴールド</td>
			</tr>
			<tr>
			<td></td>
				<td><input type=submit value="確認"></td>
				<td><input type=reset value=リセット></td>
				</tr>
		</table>
	</form>
>>>>>>> refs/remotes/origin/master
</body>
</html>
