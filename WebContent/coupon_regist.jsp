<%@ page language="java" contentType="text/html; charset=UTF-8"
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
</body>
</html>