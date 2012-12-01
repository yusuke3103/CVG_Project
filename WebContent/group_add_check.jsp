<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
HttpSession ses = request.getSession();
String id = (String)session.getAttribute("id");
Integer res1 = (Integer)session.getAttribute("res1");
Integer res2 = (Integer)session.getAttribute("res2");
System.out.println(id);
System.out.println(res1);
System.out.println(res2);

if(res1==1 && res2==1){
	response.sendRedirect("touroku_kanryou.jsp");
}
else{
	response.sendRedirect("touroku_sippai.jsp");
}

	   
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>