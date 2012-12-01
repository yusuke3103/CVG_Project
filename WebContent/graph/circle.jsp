<%@page import="java.sql.*"%>
<%@page import="cvg_project.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession ses = request.getSession();
	String id = (String) session.getAttribute("id");
	System.out.println(id);
%>
<!DOCTYPE html>
<html lang="ja" dir="ltr">
<head>
<meta charset="utf-8">
<style type="text/css">
#graph {
	width: 500px;
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
<script type="text/javascript" src="../js/flotr2.min.js"></script>
</head>

<body>
	<p class="graph-title">男女比</p>
	<div id="graph"></div>
	<%
	Connection con = DBManager.getConnection();
	String sql = "select sex,count(*) From v_check where mail= \"" +id+ "\" group by sex;";
	Statement stm = con.createStatement();
	ResultSet rs = stm.executeQuery(sql);
	
	out.println("<script type=\"text/javascript\">");
	rs.first()
	String a = rs.getString(2);
	out.println("(function basic_pie(container) {");
	out.println("var d1 = [ [ 1, "+ a +" ] ], d2 = [ [ 2,1000 ] ], graph;");
			%>
			graph = Flotr.draw(container, [ {
				data : d1,
				label : "男性"
			}, {
				data : d2,
				label : "女性"
			}, ], {
				HtmlText : false,
				grid : {
					verticalLines : false,
					horizontalLines : false
				},
				xaxis : {
					showLabels : false
				},
				yaxis : {
					showLabels : false
				},
				pie : {
					show : true,
					explode : 6
				},
				mouse : {
					track : true
				},
				legend : {
					position : "se",
					backgroundColor : "#D2E8FF"
				}
			});
		})(document.getElementById("graph"));
	</script>
</body>
</html>