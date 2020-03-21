<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog Detail</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" >
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="main-content">
                <div class="row">
                    <div class="col-xs-12 col-sm-9 col-lg-9">
                        <div class="page2">
                        	<div class="artical">
                            	<div class="title">
                            		<a href="${pageContext.request.contextPath}/BlogDetailController?id=${product.productID}" class="scrollto">${product.productName}</a>
                            	</div>
                            	<div class="content">
                            		<p class="text"><img src="${product.productImage}" width="50%" class="image">${product.productContent}</p>
                            	</div>
                            </div>
                        </div>
                     </div>
                    <div class="col-xs-0 col-sm-3 col-lg-3">
                        <jsp:include page="share.jsp"></jsp:include>
                    </div>
                  </div>
            </div>
            <div class="footer">
                <a>This is page counter</a>
            </div>
	</div>
</body>
</html>