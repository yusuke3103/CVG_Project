<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
HttpSession ses = request.getSession();
String id = (String)session.getAttribute("id");
System.out.println(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
		<body>
		<center>
			<table>
				<tr>
					<td><a href="circle.jsp" target=main>男女別</a></td>
					<td><a href="bar_chart.html" target=main>日別</a></td>
				</tr>
			</table>
			</center>
		</body>
</html>