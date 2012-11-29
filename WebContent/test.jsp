<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja" dir="ltr">
<head>
<meta charset="utf-8">
<style type="text/css">
#graph {
	width: 600px;
	height: 400px;
	margin: 20px auto;
}

.graph-title {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	margin: 50px 0 0;
}
</style>
<script type="text/javascript" src="js/flotr2.min.js"></script>
<meta charset="UTF-8">
<script type="text/javascript">
	function entryChange1() {
		radio = document.getElementsByName('entryPlan');
		if (radio[0].checked) {
			//フォーム
			document.getElementById('firstBox').style.display = "";
			document.getElementById('secondBox').style.display = "none";
			//特典
			document.getElementById('firstNotice').style.display = "";
		} else if (radio[1].checked) {
			//フォーム
			document.getElementById('firstBox').style.display = "none";
			document.getElementById('secondBox').style.display = "";
			//特典
			document.getElementById('firstNotice').style.display = "none";
		}
	}

	//オンロードさせ、リロード時に選択を保持
	window.onload = entryChange1;
</script>
<title>Insert title here</title>
</head>
<body>
<form>
<table>
	<tr>
		<th>利用方法</th>
		<td>
			<label><input type="radio" name="entryPlan" value="hoge1" onclick="entryChange1();" checked="checked" >初めて申し込む</label>
			<label><input type="radio" name="entryPlan" value="hoge2" onclick="entryChange1();" >2度目以降の利用</label>
		</td>
	</tr>

	<!-- 表示非表示切り替え -->
	<tr id="firstBox">
		<th>紹介者</th>
		<td><input type="text" />
		<p>紹介された方のお名前を入力してください。</p></td>
	</tr>
	
	<!-- 表示非表示切り替え -->
	<tr id="secondBox">
		<th>会員番号</th>
		<td><input type="text" />
		<p>会員番号を入力してください。</p></td>
	</tr>
</table>
</form>


<!-- 表示非表示切り替え -->
<div id="firstNotice">
	特典:初めての方は30%オフ！
</div>

</body>
</html>