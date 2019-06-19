<%@page import="video.videoDTO.VideoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="service.VideoService"%>
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
        <link rel
        ="stylesheet" href="style/css/bootstrap.min.css">
        <link rel="stylesheet" href="style/css/style.css">
        <link rel="stylesheet" href="style/css/style-responsive.css">
        <link rel="stylesheet" href="style/css/animate.min.css">
        <link rel="stylesheet" href="style/css/vertical-rhythm.min.css">
        <link rel="stylesheet" href="style/css/owl.carousel.css">
        <link rel="stylesheet" href="style/css/magnific-popup.css">        
</head>
<body class="appear-animate">
        
        

        <!-- Divider -->
        <hr class="mt-0 mb-0">
        <!-- End Divider -->
        
	<%@ include file="../common/indexheader.jsp" %>
	<%@ include file="../common/sidebar.jsp" %>

        <!-- Section -->
        
            <section class="page-section">
            
                <div class="container relative">
                    
                            <div class="row multi-columns-row">
                        
                                <!-- Post Item -->
                                <%
	                                VideoService videoService = VideoService.getInstance();
	                            	ArrayList<VideoDTO> v_list = videoService.videoSearch();
	                            	
	                            	for(VideoDTO dto : v_list){
                                %>
                                <div class="col-sm-6 col-md-3 col-lg-3 mb-60 mb-xs-40">	  							
	                                    <div class="post-prev-img"><!-- 썸네일 :: 영상으로 이동 -->
	                                        <a href="VideoView.vd?id=<%= dto.getV_id()%>"><img src="<%=dto.getV_img() %>" alt="" >
	                                        </a>	                                                                            
	                                    </div>
	                                    
	                                    <div class="post-prev-title font-alt"><!-- 영상제목 :: 영상으로 이동 -->
	                                        <a href="#"><%=dto.getV_title() %></a>
	                                    </div>
	                                    
	                                    <div class="post-prev-info font-alt">	<!-- 영상업로드 날짜  -->
	                                        <a href="#"><%=dto.getUpdated() %></a>
	                                    </div>
	                                    
	                                   <div class="post-prev-text">	<!-- 영상 설명 -->
	                                        <%=dto.getV_desc() %>
	                                    </div>                                  
	                                </div>
	                             <% } %>
                                <!-- End Post Item -->
                            </div>
                    
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