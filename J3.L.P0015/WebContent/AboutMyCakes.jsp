<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US" class="">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" type="text/css" href="./About my Cakes_files/3746044.design.v25490.css">
    <link rel="canonical" href="http://www.simplesite.com/us-123cafe/118937148">

    <title>About my Cakes</title>

    <style type="text/css">
        .fancybox-margin {
            margin-right: 17px;
        }
    </style>
    <jsp:useBean id="product" class="dao.ProductDAO" scope="page"></jsp:useBean>
</head>

<body data-pid="118937148" data-iid="" style="background-image: url('http://css.simplesite.com/images/v3/backgrounds/pictures/body/blur-redblack.jpg');
		background-repeat: no-repeat;
    	background-position: center top;
    	background-attachment: fixed;
    	background-size: cover;">
    <div class="container-fluid site-wrapper">
        <jsp:include page="header.jsp"></jsp:include> 
        <div class="container-fluid content-wrapper" id="content">
            <div class="container">
                <div class="row-fluid content-inner">
                    <div id="left" class="span9">
                        <div class="wrapper ">
                            <div class="content">
                                <div class="section article">
                                    <div class="heading wordwrapfix">
                                        <h3>About my Cakes</h3>
                                    </div>
                                    <div class="content">
                                        <div class="img-simple span6 pull-right">
                                            <div class="image">
                                                <a ><img
                                                        src="./About my Cakes_files/i282319414620354444._szw480h1280_.jpg"></a>
                                            </div>
                                        </div>
                                        <p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
                                                nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat
                                                volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
                                                ullamcorper suscipit lobortis nisl ut aliquip
                                                ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in
                                                vulputate velit esse molestie consequat, vel illum dolore eu feugiat
                                                nulla facilisis at vero eros et accumsan et iusto odio dignissim qui
                                                blandit praesent luptatum zzril delenit augue
                                                duis dolore te feugait nulla facilisi. </span></p>
                                        <p><span>Nam liber tempor cum soluta nobis eleifend option congue nihil
                                                imperdiet doming id quod mazim placerat facer possim assum. Typi non
                                                habent claritatem insitam; est usus legentis in iis qui facit eorum
                                                claritatem. Investigationes demonstraverunt lectores legere me lius quod
                                                ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur
                                                mutationem consuetudium lectorum. Mirum est notare quam littera gothica,
                                                quam nunc putamus parum claram, anteposuerit
                                                litterarum formas humanitatis per seacula quarta decima et quinta
                                                decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant
                                                sollemnes in futurum.</span></p>
                                    </div>
                                </div>
                                <c:forEach items="${product.showAll()}" var="p">
                                <div class="section article">
                                    <div class="content">
                                    	<table class="table">
                							<thead>
                    							<tr>
                       					 			<th>Product</th>
                                                	<th class="align-right">Price</th>
                    							</tr>
                							</thead>
                							<tbody>
                    							<tr>
                        							<td>${p.productName}</td>
                                                	<td class="align-right">€${p.productPrice}</td>
                    							</tr>
                							</tbody>
            							</table>
                                        <div class="img-simple span4 pull-left">
                                            <div class="image">
                                                <a><img src="${p.productImage}"></a> <!--?nh to ?? ?ây-->
                                            </div>
                                        </div>
                                        <!--<p><span style="font-family: georgia, palatino; font-size: 24px;"><span
                                                    style="font-family: georgia, palatino;"><h4>${p.productName}  -->
                                        <p>${p.productContent}</p>                       
                                    </div>
                                </div>
                                </c:forEach>
                            </div>


                        </div>
                    </div>
                    <jsp:include page="share.jsp"></jsp:include>
                </div>
            </div>
        </div>
        <div class="container-fluid footer-wrapper" id="footer">
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