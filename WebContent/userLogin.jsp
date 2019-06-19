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
        <link rel="shortcut icon" href="/YongTube_Project/style/images/yongtube_logo.png">

        <!-- CSS -->
        <link rel="stylesheet" href="style/css/bootstrap.min.css">
        <link rel="stylesheet" href="style/css/style.css">
        <link rel="stylesheet" href="style/css/style-responsive.css">
        <link rel="stylesheet" href="style/css/animate.min.css">
        <link rel="stylesheet" href="style/css/vertical-rhythm.min.css">
        <link rel="stylesheet" href="style/css/owl.carousel.css">
        <link rel="stylesheet" href="style/css/magnific-popup.css">        
        

</head>
<body class="appear-animate">
        
	<!-- Page Loader -->        
	<div class="page-loader">
	    <div class="loader">Loading...</div>
	</div>
	<!-- End Page Loader -->

	<!-- Page Wrap -->
	<div class="page" id="top">
    
	    <!-- Navigation panel -->
	    <%@ include file="common/loginheader.jsp" %>
    	<!-- End Navigation panel -->
	</div>
	    <!-- Head Section -->
	    <section class="small-section bg-gray-lighter">
	        <div class="relative container align-left">
	            
	            <div class="row">
	                
	                <div class="col-md-8">
	                    <h1 class="hs-line-11 font-alt mb-20 mb-xs-0">LogIn</h1>
	                    <div class="hs-line-4 font-alt black">
	                        Write your Registed E-mail & Password
	                    </div>
	                </div>
	            </div>
	            
	        </div>
	    </section>
	    <!-- End Head Section -->
		
	            <!-- Section -->
	            <section class="page-section">
	                <div class="container relative">
	                    
	                    <!-- Tab panes -->
	                    <div class="tab-content tpl-minimal-tabs-cont section-text">
	                        
	                        <div class="tab-pane fade in active" id="mini-one">
	                            
	                            <!-- Login Form -->                            
	                            <div class="row">
	                                <div class="col-md-4 col-md-offset-4">
	                                    
	                                    <form class="form contact-form" method="post" id="contact_form" action="UserLogin.us">
	                                        <div class="clearfix">
												<br>
												<br>
	                                            <!-- UserId -->
	                                            <div class="form-group">
	                                            	<label>ID</label>
	                                            	<input type="text" name="id" id="id" class="input-md round form-control" placeholder="ID" pattern=".{3,100}" required>
	                                            </div>
	                                            
	                                            <!-- Password -->
	                                            <div class="form-group">
	                                            	<label>Password</label>
	                                                <input type="password" name="passwd" id="passwd" class="input-md round form-control" placeholder="Password" pattern=".{5,100}" required>
	                                            </div>
	                                                
	                                        </div>
	                                        
	                                        <div class="clearfix">
	                                            
	                                            <div class="cf-left-col">
	                                                
	                                                <!-- Inform Tip -->                                        
	                                                <div class="form-tip pt-20">
	                                                    <a href="">Forgot Password?</a>
	                                                </div>
	                                                
	                                            </div>
	                                            
	                                            <div class="cf-right-col">
	                                                
	                                                <!-- Send Button -->
	                                                <div class="align-right pt-10">
	                                                    <button class="submit_btn btn btn-mod btn-medium btn-round" id="login-btn" value="login">Login</button>
	                                                </div>
	                                                
	                                            </div>
	                                            
	                                        </div>
	                                        
	                                    </form>
	                                    
	                                </div>
	                            </div>
	                            <!-- End Login Form -->
	                            
	                        </div>
	                        
	                        
	                    <!-- Nav Tabs -->
		                    <div class="align-center mb-40 mb-xxs-30">
		                      
		                        <ul class="nav nav-tabs tpl-minimal-tabs">
		
		                            <li class="active">
		                            </li>
		 
		                        </ul>
		                    </div>                        
	                    </div>                    
	                </div>
	            </section>
	            <!-- End Section -->
	            
	            
	            <!-- Foter -->
	            <%@ include file="common/footer.jsp" %>
	            <!-- End Foter -->
        <!-- End Page Wrap -->
        
        
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
