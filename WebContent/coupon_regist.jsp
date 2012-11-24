<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Script-Type" content="text/javascript">
<script type="text/javascript">
	function checkForm() {
		var name = document.regist.name;
		var content = document.regist.content;

		if (name.value == "") {
			alert("クーポン内容が入力されていません。");
		}
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align=center>
		<form action="./coupon_check.jsp" name=regist
			onsubmit="return checkForm()" method="POST">
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
					<td><input type="number" name=s_time width="2" min="0"
						max="23">
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
					<td><input type="number" name=e_time width="2" min="0"
						max="23">
					<td>時</td>
			</table>
			<h2>配信先</h2>
			<table>
				<tr>
					<td><input type="radio" name=send value="1" onclick="ranklist">全員</td>
					<td><input type="radio" name=send value="2">店舗利用者</td>
					<td><input type="radio" name=send value="3">グループ利用者</td>
				</tr>
			</table>
			<br>
			<table>


					<td></td>
					<td><input type=submit value="確認"></td>
					<td><input type=reset value=リセット></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>