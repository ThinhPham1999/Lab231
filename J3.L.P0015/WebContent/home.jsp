<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US" class="">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
    <script src="https://kit.fontawesome.com/eee6e774ce.js"></script>
    <link rel="stylesheet" type="text/css" href="Home/css.css">
    
    <style type="text/css">
        .fancybox-margin {
            margin-right: 17px;
        }
    </style>
    <jsp:useBean id="product" class="dao.ProductDAO" scope="page"></jsp:useBean>
    <jsp:useBean id="info" class="dao.InformationDAO" scope="page"></jsp:useBean>
</head>
<body style="background-image: url('http://css.simplesite.com/images/v3/backgrounds/pictures/body/blur-redblack.jpg');
		background-repeat: no-repeat;
    	background-position: center top;
    	background-attachment: fixed;
    	background-size: cover;">
    <div class="container-fluid site-wrapper">
        <div class="container-fluid content-wrapper" id="content">
            <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="row-fluid content-inner">
                    <div id="left" class="span9">
                        <div class="wrapper ">
                            <div class="content">
                                <div class="section article">
                                    <div class="content">
                                        <div class="img-simple span3 pull-left">
                                            <div class="image">
                                                <a><img src="image/anh1.jpg"></a> <!--?nh to ?? ?ây-->
                                            </div>
                                        </div>
                                        <p><span style="font-family: georgia, palatino; font-size: 24px;"><span
                                                    style="font-family: georgia, palatino;"><!--Title to ?? ?ây!--></span></span></p>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                            nibh euismod tincidunt ut
                                            laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                            quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex
                                            ea commodo consequat.</p>
                                        <p><span data-mce-mark="1">Claritas est etiam processus dynamicus, qui sequitur
                                                mutationem consuetudium lectorum. Mirum est notare quam littera
                                                gothica</span></p>
                                    </div>
                                </div>
                                <div class="section">
                                    <div class="content">
                                        <ul class="thumbnails column-article-section">
                                        <c:forEach items="${product.lastList()}" var="p">
                                            <li class="span6">
                                                <div class="img-simple span12 ">
                                                    <div class="image">
                                                        <a><img src="${p.productImage}"></a>
                                                    </div>
                                                </div>
                                                <h4>${p.productName}</h4>
                                                <p>${p.productContent}</p>
                                            </li>
                                        </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                                <div class="section article">
                                    <div class="content">
                                        <p><span
                                                style="font-family: times,times new roman; font-size: 24px;">Visit
                                                my cafe</span></p>
                                        <p>${info.takeInfo().address}</p>
                                        <p>Gammel Torv, Copenhagen</p>
                                        <p>Phone: ${info.takeInfo().phone}</p>
                                    </div>
                                </div>
                                <div class="section signature">
                                    <div class="content">

                                        <div class="signature-text-noimg">
                                            <p>Kind regards</p>
                                            <div class="signature-sign"
                                                style="font-family: Dancing Script,serif;">
                                                Maria Bagnarelli
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="share.jsp"></jsp:include>
                </div>
            </div>
        </div> 

        <div class="container-fluid footer-wrapper" id="footer">
            <!-- this is the Footer Wrapper -->
            <div class="container">
                <div class="footer-page-counter" style="display: block;">
                    <jsp:include page="counter.jsp"></jsp:include>
                </div>
                <div id="css_simplesite_com_fallback" class="hide"></div>
            </div>
        </div>
    </div>
</body>

</html>