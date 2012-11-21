<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./group_check.jsp">
		<h2>
			<u>基本情報設定</u>
		</h2>
		<table>
			<tr>
				<td>グループ名</td>
				<td><input type=text name=groupname></td>
			</tr>
			<tr>
				<td>店舗数</td>
				<td><input type=text name=count></td>
			</tr>
			<tr>
				<td>代表店舗</td>
				<td>********</td>
			</tr>
			<tr></tr>
			<tr>
				<td>店舗ID</td>
				<td><input type=text name=group1></td>
			</tr>
		</table>
		<h2>
			<u>ポイント付与条件</u>
		</h2>
		<table>
			<tr>
				<td><input type=text name=money size=5></td>
				<td>円</td>
				<td><select name=terms>
						<OPTION value="0"></OPTION>
						<OPTION value="1">以上で</OPTION>
						<OPTION value="2">毎に</OPTION>
				</select></td>
				<td><input type=text name=point size=2></td>
				<td>ポイント付与</td>
			</tr>
		</table>
		<h2>
			<u>会員ランク別設定</u>
		</h2>
		<h3>レギュラー会員</h3>
		<table>
			<tr>
				<td>ポイント:</td>
				<td>0 〜 <input type=text name=r_e size=1></td>
			</tr>
			<tr>
				<td>特典</td>
				<td><input type=text name=r_tokuten></td>
			</tr>
		</table>
		<h3>シルバー会員</h3>
		<table>
			<tr>
				<td>ポイント:</td>
				<td>0 〜 <input type=text name=r_e size=1></td>
			</tr>
			<tr>
				<td>特典</td>
				<td><input type=text name=r_tokuten></td>
			</tr>
		</table>
		<h3>ゴールド会員</h3>
		<table>
			<tr>
				<td>ポイント:</td>
				<td>0 〜 <input type=text name=r_e size=1></td>
			</tr>
			<tr>
				<td>特典</td>
				<td><input type=text name=r_tokuten></td>
			</tr>
		</table>
		<input type=submit value=確認><input type="reset" value=リセット>
	</form>


</body>
</html>