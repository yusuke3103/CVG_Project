<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
HttpSession ses = request.getSession();
String id = (String)session.getAttribute("id");
System.out.println(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<FRAMESET rows="10%,*" border="0">
	<FRAME name="menu" src="menu.jsp">
	<FRAME name="main" src="main.html">
	<NOFRAMES>
		<BODY>
		<form action="./menu.jsp" method="post">
		<input type = "hidden" value=  +mail >
		</form>
			<P>このページを表示するには、フレームをサポートしているブラウザが必要です。</P>
		</BODY>
	</NOFRAMES>
</FRAMESET>
</html>