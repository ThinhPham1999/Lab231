<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="count" class="controller.CounterFilter" scope="application"></jsp:useBean>
</head>
<body>
	<div class="footer-page-counter" style="display: block; margin-top: 20px; padding-top: 20px; text-align: right;">
    	<span style="color: #000000; background: #FFFFFF;
					text-shadow: 2px 2px 0 #bcbcbc, 4px 4px 0 #9c9c9c;
					color: #000000;
					background: #FFFFFF;
					font-size: 30px;">${hit}</span>
    </div>
</body>
</html>