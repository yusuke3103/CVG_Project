<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja" dir="ltr">
<head>
<meta charset="utf-8">
<style type="text/css">
#graph {
    width : 600px;
    height: 400px;
    margin: 20px auto;
}
.graph-title {
    font-size:16px;
    font-weight:bold;
    text-align:center;
    margin:50px 0 0;
}
</style>
<script type="text/javascript" src="js/flotr2.min.js"></script>

</head>
<body>
<form onclick="basic_pie();">
<input type = radio name=gra checked="checked">男女比
<input type = radio name=gra onclick="">
</form>
<hr>
<p class="graph-title">男女比</p>
<div id="graph"></div>
<script type="text/javascript">
(function basic_pie(container) {
    var d1 = [[0, 51000]],
        d2 = [[0, 28000]],
        graph;
    
    graph = Flotr.draw(container, [{
        data: d1,
        label: "男性"
    }, {
        data: d2,
        label: "女性"
    }], {
        HtmlText: false,
        grid: {
        	verticalLines: false,
            horizontalLines: false
        },
        xaxis: {
            showLabels: false
        },
        yaxis: {
            showLabels: false
        },
        pie: {
            show: true,
            explode: 6
        },
        mouse: {
            track: true
        },
        legend: {
            position: "se",
            backgroundColor: "#D2E8FF"
        }
    });
})(document.getElementById("graph"));
</script>
</body>
</html>