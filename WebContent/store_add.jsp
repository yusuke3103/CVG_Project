<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>店舗追加</title>
</head>
<body>
 <form action="/cvg_db/Group_add" method="post">
  <table>
  	<tr>
  	 <td><input type=text name=storename></td>
  	</tr>
  	<tr>
  	 <td><input type=text name=passwd></td>
  	</tr>
 	<tr>
  	 <td><input type=text name=zip></td>
  	</tr>
  	<tr>
  	 <td><input type=text name=pref></td>
  	</tr>
  	<tr>
  	 <td><input type=text name=addr></td>
  	</tr>
  	<tr>
  	 <td><input type=text name=addr2></td>
  	</tr>
  	<tr>
  	 <td><input type=text name=phonenumber></td>
  	</tr>
  	<tr>
  	 <td><input type=text name=mail></td>
  	</tr>
  	<tr>
  		<td></td>
  		<td><input type="submit" value="送信"><input type="reset"></td>
	</tr>
  </table>
 </form>
</body>
</html>