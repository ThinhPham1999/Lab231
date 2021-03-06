<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" >
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Quattrocento+Sans&display=swap" rel="stylesheet">
    <jsp:useBean id="menu" class="dao.MenuDAO"></jsp:useBean>
</head>
<body>
	<div class="container">
		<jsp:include page="header_Menu.jsp"></jsp:include>
		
		<div class="main-content">
                <div class="row">
                    <div class="col-xs-12 col-sm-9 col-lg-9">
                        <div style="margin: 20px;">
                            <h3>Menu and Price list</h3>
                        </div>
                        <c:forEach items="${menu.showAll()}" var="m" varStatus="loop">
                        <div class="page2">
                        	<div class="artical">
                            	<div class="title">
                            		<table class="table">
                            		<tbody>
    									<tr>
      										<td>Menu ${loop.count}</td>
      										<td style="text-align: right;">Price</td>
    									</tr>
    									<tr>
      										<td>${m.menuName}</td>
      										<td style="text-align: right;">€${m.price}</td>
    									</tr>
  										</tbody>
                            		</table>
                            	</div>	
                            	<div class="content">
                            		<p class="text">${m.menuDetail}</p>
                            	</div>
                            </div>
                        </div>
                        </c:forEach>
                        
                    </div>
                    <div class="col-xs-0 col-sm-3 col-lg-3">
                        <jsp:include page="share.jsp"></jsp:include>
                    </div>
                  </div>
            </div>
            <div class="footer">
                <jsp:include page="counter.jsp"></jsp:include>
            </div>
		
	</div>
</body>
</html>
