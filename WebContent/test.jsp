<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
        <title>YongTube</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta charset="utf-8">
        <meta name="author" content="Roman Kirichik">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        
        <!-- Favicons -->
        <link rel="shortcut icon" href="images/favicon.png">

        <!-- CSS -->
        <link rel="stylesheet" href="style/css/bootstrap.min.css">
        <link rel="stylesheet" href="style/css/style.css">
        <link rel="stylesheet" href="style/css/style-responsive.css">
        <link rel="stylesheet" href="style/css/animate.min.css">
        <link rel="stylesheet" href="style/css/vertical-rhythm.min.css">
        <link rel="stylesheet" href="style/css/owl.carousel.css">
        <link rel="stylesheet" href="style/css/magnific-popup.css">        
        
				<%=session.getAttribute("u_id") %>
                <%=session.getAttribute("admin_id") %>
</head>
<body class="appear-animate">
        
        

        <!-- Divider -->
        <hr class="mt-0 mb-0">
        <!-- End Divider -->
        
        <div class="page" id="top">
            
            <!-- Navigation panel -->
            <nav class="main-nav js-stick">
                <div class="full-wrapper relative clearfix">
                <!-- Logo ( * your text or image into link tag *) -->
                <div class="nav-logo-wrap local-scroll">
                    <a href="index.jsp" class="logo">
                        <img src="../style/images/logo03.png" alt="" />
                    </a>
                </div>
                <div class="mobile-nav">
                    <i class="fa fa-bars"></i>
                </div>

                <!-- Main Menu -->
                <div class="inner-nav desktop-nav">
                    <ul class="clearlist">


                    <!-- Main Menu -->
                    
                           	
                           	
                            <!-- Item With Sub -->
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="register.jsp">Register</a></li>
                            
                           
                    <!-- End Main Menu -->

                    
                            <li class="active"><a href="mychannel.jsp">님</a></li>
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li><a href="logout.jsp">Logout</a></li>
                            <li><a href="register.jsp">Register</a></li>

                        <!-- Divider -->
                        <li><a>&nbsp;</a></li>
                        <!-- End Divider -->

                       <!-- Search -->
                            <li>
                                <a href="#" class="mn-has-sub" style="height: 55px; line-height: 55px;"><i class="fa fa-search"></i> Search</a>
                                
                                <ul class="mn-sub" style="display: none;">
                                    
                                    <li>
                                        <div class="mn-wrap">
                                            <form method="post" class="form">
                                                <div class="search-wrap">
                                                    <button class="search-button animate" type="submit" title="Start Search">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                    <input type="text" class="form-control search-field" placeholder="Search...">
                                                </div>
                                            </form>
                                        </div>
                                    </li>
                                    
                                </ul>
                                
                            </li>
                            <!-- End Search -->
                            
                            <!-- Cart -->
                            <li>
                                <a href="#"><i class="fa fa-shopping-cart"></i> Cart(0)</a>
                            </li>
                            <!-- End Cart -->
							
                    </ul>
                    
                </div>
                <!-- End Main Menu -->
				

            </div>
            </nav>
            <!-- End Navigation panel -->
        
	
	<%@ include file="../common/sidebar.jsp" %>
	
	

        <!-- Section -->
        
            <section class="page-section">
            
                <div class="container relative">
                    
                            <div class="row multi-columns-row">
                        
                                <!-- Post Item -->
                                <div class="col-sm-6 col-md-3 col-lg-3 mb-60 mb-xs-40">
                                    
                                    <div class="post-prev-img">
                                        <a href="blog-single-sidebar-right.html"><img src="images/blog/post-prev-1.jpg" alt="" /></a>
                                    </div>
                                    
                                    <div class="post-prev-title font-alt">
                                        <a href="">New Web Design Trends</a>
                                    </div>
                                    
                                    <div class="post-prev-info font-alt">
                                        <a href="">John Doe</a> | 10 December
                                    </div>
                                    
                                    <div class="post-prev-text">
                                        Maecenas  volutpat, diam enim sagittis quam, id porta quam. Sed id dolor 
                                        consectetur fermentum nibh volutpat, accumsan purus. 
                                    </div>
                                    
                                    <div class="post-prev-more">
                                        <a href="" class="btn btn-mod btn-gray btn-round">Read More <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    
                                </div>
                                <!-- End Post Item -->
                                
                                <!-- Post Item -->
                                <div class="col-sm-6 col-md-3 col-lg-3 mb-60 mb-xs-40">
                                
                                 <div class="post-prev-img">
                                        <a href="#"><img src="http://i.ytimg.com/vi/pu5VvvKj7XY/mqdefault.jpg" alt="" /></a>
                                    </div>
                                    
                                    <!-- <div style="position: relative; height:0; padding-bottom: 56.25%">
										<iframe width="972" height="547" src="https://www.youtube.com/embed/pu5VvvKj7XY" frameborder="0"
										 allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
										  allowfullscreen>
										  </iframe>
									</div> -->
                                    
                                    <div class="post-prev-title font-alt">
                                        <a href="">Minimalistic Design Forever</a>
                                    </div>
                                    
                                    <div class="post-prev-info font-alt">
                                        <a href="">John Doe</a> | 9 December
                                    </div>
                                    
                                    <div class="post-prev-text">
                                        Maecenas  volutpat, diam enim sagittis quam, id porta quam. Sed id dolor 
                                        consectetur fermentum nibh volutpat, accumsan purus. 
                                    </div>
                                    
                                    <div class="post-prev-more">
                                        <a href="" class="btn btn-mod btn-gray btn-round">Read More <i class="fa fa-angle-right"></i></a>
                                    </div>
                                    
                                </div>
                                <!-- End Post Item -->
                            </div>
                    
                    <%
                    	//https://youtu.be/pu5VvvKj7XY
                    	//<iframe width="972" height="547" src="https://www.youtube.com/embed/pu5VvvKj7XY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    	//http://i.ytimg.com/vi/동영상ID/이미지형식.jpg mqdefault.jpg
                    %>
                </div>
            </section>
            <!-- End Section -->


        <!-- Divider -->
        <hr class="mt-0 mb-0">
        <!-- End Divider -->


        <!-- Widgets Section -->
        
        <!-- End Widgets Section -->

        <!-- Footer -->
        <%@ include file="../common/footer.jsp" %>
     <!-- End Footer -->



 <!-- JS -->
  <!-- JS -->
        <script type="text/javascript" src="style/js/jquery-1.11.2.min.js"></script>
        <script type="text/javascript" src="style/js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="style/js/bootstrap.min.js"></script>        
        <script type="text/javascript" src="style/js/SmoothScroll.js"></script>
        <script type="text/javascript" src="style/js/jquery.scrollTo.min.js"></script>
        <script type="text/javascript" src="style/js/jquery.localScroll.min.js"></script>
        <script type="text/javascript" src="style/js/jquery.viewport.mini.js"></script>
        <script type="text/javascript" src="style/js/jquery.countTo.js"></script>
        <script type="text/javascript" src="style/js/jquery.appear.js"></script>
        <script type="text/javascript" src="style/js/jquery.sticky.js"></script>
        <script type="text/javascript" src="style/js/jquery.parallax-1.1.3.js"></script>
        <script type="text/javascript" src="style/js/jquery.fitvids.js"></script>
        <script type="text/javascript" src="style/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="style/js/isotope.pkgd.min.js"></script>
        <script type="text/javascript" src="style/js/imagesloaded.pkgd.min.js"></script>
        <script type="text/javascript" src="style/js/jquery.magnific-popup.min.js"></script>
        <!-- Replace test API Key "AIzaSyAZsDkJFLS0b59q7cmW0EprwfcfUA8d9dg" with your own one below 
        **** You can get API Key here - https://developers.google.com/maps/documentation/javascript/get-api-key -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAZsDkJFLS0b59q7cmW0EprwfcfUA8d9dg"></script>
        <script type="text/javascript" src="style/js/gmap3.min.js"></script>
        <script type="text/javascript" src="style/js/wow.min.js"></script>
        <script type="text/javascript" src="style/js/masonry.pkgd.min.js"></script>
        <script type="text/javascript" src="style/js/jquery.simple-text-rotator.min.js"></script>
        <script type="text/javascript" src="style/js/all.js"></script>
        <script type="text/javascript" src="style/js/contact-form.js"></script>
        <script type="text/javascript" src="style/js/jquery.ajaxchimp.min.js"></script>        
        <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
</body>
</html>