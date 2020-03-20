<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US" class="">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
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
                                                <a><img src=""></a> <!--?nh to ?? ?ây-->
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
                                            <li class="span6">
                                                <div class="img-simple span12 ">
                                                    <div class="image">
                                                        <a><img src="Home/anh2.jpg"></a>
                                                    </div>
                                                </div>
                                                <h4>
                                                    In the Afternoon</h4>
                                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
                                                    nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat
                                                    volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
                                                    ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
                                                    consequat.</p>
                                            </li>
                                            <li class="span6">
                                                <div class="img-simple span12 ">
                                                    <div class="image">
                                                        <a><img src="Home/anh3.jpg"></a>
                                                    </div>
                                                </div>
                                                <h4>
                                                    Traditional Cakes</h4>
                                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
                                                    nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat
                                                    volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
                                                    ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
                                                    consequat.</p>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="section article">
                                    <div class="content">
                                        <p><span
                                                style="font-family: times,times new roman; font-size: 24px;">Visit
                                                my cafe</span></p>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                                        <p>Gammel Torv, Copenhagen</p>
                                        <p>Phone: 12 1234 1234</p>
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
                <div class="footer-info">
                    <div class="footer-powered-by">
                        <a rel="nofollow"
                            href="http://www.simplesite.com/pages/receive.aspx?partnerkey=123i%3afooterbanner&amp;referercustomerid=3017859&amp;refererpageid=118937146">Created
                            with SimpleSite</a>
                    </div>
                </div>
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