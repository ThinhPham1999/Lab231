<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US" class="">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find my Cakes</title>
        <script src="https://kit.fontawesome.com/eee6e774ce.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="Home/css.css">        
        <style type="text/css">
            .fancybox-margin {
                margin-right: 17px;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid site-wrapper">
            <jsp:include page="header.jsp"></jsp:include>
                <div class="container-fluid content-wrapper" id="content">
                    <div class="container">
                        <div class="row-fluid content-inner">
                            <div id="left" class="span9">
                                <div class="wrapper ">
                                    <div class="content">
                                        <div class="section"><div class="heading m-2">
                                                <h1 class="page-title">Find Maria's Cafe</h1>
                                            </div>
                                            <div class="content">

                                                <div class="row-fluid map-page-info">
                                                    <div class="span6">
                                                        <div class="item">
                                                            <div class="heading">
                                                                <h4 class="item-title map-page-title">Address and contact:</h4>
                                                            </div>
                                                            <div class="content">
                                                                <div class="country">
                                                                    <p>Copenhagen, Denmark</p>
                                                                </div>

                                                                <div class="row-fluid">
                                                                    <div class="span3">
                                                                        Tel:
                                                                    </div>
                                                                    <div class="span9">
                                                                        <a rel="nofollow" href="tel:123456">
                                                                            123456
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="row-fluid">
                                                                    <div class="span3">
                                                                        Email:
                                                                    </div>
                                                                    <div class="span9">
                                                                        <a rel="nofollow"
                                                                           href="mailto:your-email@your-email.com">
                                                                            your-email@your-email.com
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="span6">
                                                        <div class="item">
                                                            <div class="heading">
                                                                <h4 class="item-title map-page-title">Opening hours:</h4>
                                                            </div>
                                                            <div class="content">
                                                                <p>Monday: Closed<br>Tuesday - Friday: 10:00 - 20:00<br>Saturday
                                                                    and Sunday: 11.00 - 21:00</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="map" style="margin: 10px; margin-bottom: 50px;">
                                                    <div id="map-container-google-1" class="z-depth-1-half map-container" style="height: 500px; border-radius: 10px">
                                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.2803951558517!2d108.2034673148582!3d16.050932988892235!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219bbac29a89b%3A0xd1216d40b4bca153!2zMTUwIER1eSBUw6JuLCBIw7JhIFRodeG6rW4gTmFtLCBI4bqjaSBDaMOidSwgxJDDoCBO4bq1bmcgNTUwMDAw!5e0!3m2!1svi!2s!4v1582770866774!5m2!1svi!2s"
                                                                style="border:0; left:0;
                                                                top:0;
                                                                height:100%;
                                                                width:100%;"></iframe>
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
                        <span class="footer-page-counter-item">0</span>

                        <span class="footer-page-counter-item">2</span>

                        <span class="footer-page-counter-item">6</span>

                        <span class="footer-page-counter-item">1</span>

                        <span class="footer-page-counter-item">1</span>

                        <span class="footer-page-counter-item">9</span>
                    </div>
                    <div id="css_simplesite_com_fallback" class="hide"></div>
                </div>
            </div>
        </div>
    </body>

</html>