<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="ajaxzip2/prototype.js"></script>
<script src="ajaxzip2/ajaxzip2.js" charset="UTF-8"></script>
<script>
	AjaxZip2.JSONDATA = 'ajaxzip2/data';
</script>
<meta http-equiv="Content-Script-Type" content="text/javascript">
<script type="text/javascript">
	function checkForm() {
		var storename = document.regist.storename;
		var pass1 = document.regist.pass1;
		var pass2 = document.regist.pass2;
		var zipcode = document.regist.zip;
		var pref = document.regist.pref;
		var addr = document.regist.addr;
		var phone = document.regist.phonenumber;
		var mail = document.regist.mail;

		if (storename.value == "") {
			alert("店舗名が入力されていません");
			storename.focus();
			return false;
		}
		if (pass1.value != pass2.value) {
			alert("パスワードが一致しません");
			pass1.focus();
			return false;
		}

		if (zipcode.value == "") {
			alert("郵便番号が入力されていません");
			zip.focus();
			return false;
		}
		if (addr.value == "") {
			alert("郵便番号が入力されていません");
			addr1.focus();
			return false;
		}
		if (phone.match(/[^0-9]/g)) {
			alert("数値以外が含まれています");
			phone.focus();
			return false;
		}
		if (mail.value == "") {
			alert("メールアドレスが入力されていません");
			mail.focus();
			return false;
		}
	}
</script>
<title>店舗登録</title>
</head>
<body>
	<form action="./store_check.jsp" method="post"
		onsubmit="return checkForm()" name=regist>
		<h2>
			<u>登録画面</u>
		</h2>
		<p><font color = red>※</font>は必須項目です。</p>
		<table>
			<tr>
				<td><font color=red>※</font>店舗名</td>
				<td><input type=text name=storename></td>
			</tr>
			<tr>
				<td><font color=red>※</font>パスワード</td>
				<td><input type=password name=pass1 maxlength="12" size="10"></td>
				<td>6~12文字 半角英数字</td>
			</tr>
			<tr>
				<td><font color=red>※</font>もう一度入力</td>
				<td><input type=password name=pass2 maxlength="12" size="10"></td>
			</tr>
			<tr></tr>
			<tr>
				<td><font color=red>※</font>郵便番号</td>
				<td><input type="text" name="zipcode" size="10" maxlength="8"
					onKeyUp="AjaxZip2.zip2addr(this,'pref','addr');"></td>
				<td>例）123-4567 --- 1234567</td>
			</tr>
			<tr>
				<td><font color=red>※</font>都道府県</td>
				<td><select name="pref">
						<option value="">↓</option>
						<option value="北海道">北海道</option>
						<option value="青森県">青森県</option>
						<option value="岩手県">岩手県</option>
						<option value="宮城県">宮城県</option>
						<option value="秋田県">秋田県</option>
						<option value="山形県">山形県</option>
						<option value="福島県">福島県</option>
						<option value="茨城県">茨城県</option>
						<option value="栃木県">栃木県</option>
						<option value="群馬県">群馬県</option>
						<option value="埼玉県">埼玉県</option>
						<option value="千葉県">千葉県</option>
						<option value="東京都">東京都</option>
						<option value="神奈川県">神奈川県</option>
						<option value="新潟県">新潟県</option>
						<option value="富山県">富山県</option>
						<option value="石川県">石川県</option>
						<option value="福井県">福井県</option>
						<option value="山梨県">山梨県</option>
						<option value="長野県">長野県</option>
						<option value="岐阜県">岐阜県</option>
						<option value="静岡県">静岡県</option>
						<option value="愛知県">愛知県</option>
						<option value="三重県">三重県</option>
						<option value="滋賀県">滋賀県</option>
						<option value="京都府">京都府</option>
						<option value="大阪府">大阪府</option>
						<option value="兵庫県">兵庫県</option>
						<option value="奈良県">奈良県</option>
						<option value="和歌山県">和歌山県</option>
						<option value="鳥取県">鳥取県</option>
						<option value="島根県">島根県</option>
						<option value="岡山県">岡山県</option>
						<option value="広島県">広島県</option>
						<option value="山口県">山口県</option>
						<option value="徳島県">徳島県</option>
						<option value="香川県">香川県</option>
						<option value="愛媛県">愛媛県</option>
						<option value="高知県">高知県</option>
						<option value="福岡県">福岡県</option>
						<option value="佐賀県">佐賀県</option>
						<option value="長崎県">長崎県</option>
						<option value="熊本県">熊本県</option>
						<option value="大分県">大分県</option>
						<option value="宮崎県">宮崎県</option>
						<option value="鹿児島県">鹿児島県</option>
						<option value="沖縄県">沖縄県</option>
				</select></td>
			<tr>
				<td><font color=red>※</font>市区町村</td>
				<td><input type=text name=addr></td>
			</tr>
			<tr>
				<td>ビル名/建物名</td>
				<td><input type=text name=addr2></td>
			</tr>
			<tr>
				<td><font color=red>※</font>電話番号</td>
				<td><input type=text name=phonenumber></td>
				<td>例)090-1234-5678 --- 09012345678
			</tr>
			<tr>
				<td><font color=red>※</font>メールアドレス</td>
				<td><input type=text name=mail></td>
			</tr>
			<tr>
				<td></td>
				<td align=right><input type=submit value=確認><input
					type="reset" value=リセット></td>
			</tr>
		</table>

	</form>
</body>
</html>