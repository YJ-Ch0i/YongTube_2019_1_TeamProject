<%@page import="video.videoDTO.VideoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="service.VideoService"%>
<%@page import="user.userDTO.UserDTO"%>
<%@page import="user.userDAO.UserDAO"%>
<%@page import="service.UserService"%>
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
        <link rel="stylesheet" href="../style/css/bootstrap.min.css">
        <link rel="stylesheet" href="../style/css/style.css">
        <link rel="stylesheet" href="../style/css/style-responsive.css">
        <link rel="stylesheet" href="../style/css/animate.min.css">
        <link rel="stylesheet" href="../style/css/vertical-rhythm.min.css">
        <link rel="stylesheet" href="../style/css/owl.carousel.css">
        <link rel="stylesheet" href="../style/css/magnific-popup.css">        
</head>
<body class="appear-animate">

		<%
        	if(session.getAttribute("u_id") == null){	
        %>
        <script type="text/javascript">
        	alert("Warring! It's a wrong approach!!")
        	location.href="/YongTube_Project/index.jsp";
        </script>
        <% } %>
        
        <!-- Page Loader -->        
	<div class="page-loader">
	    <div class="loader">Loading...</div>
	</div>
	<!-- Page Wrap -->
	<div class="page" id="top">
    	<%@ include file="../common/header.jsp" %>
    </div>
    <!-- End Navigation panel -->
    
    <%
    	String u_id = "";
    	if(session.getAttribute("u_id") != null){
    		u_id = (String) session.getAttribute("u_id");
    	}
    	
    	UserService userService = UserService.getInstance();
    	UserDTO user = userService.getUser(u_id);
    	
    	int poss = (user.isPossibility()) ? 1 : 0;
    	
    	if(poss == 0){
    %>
    	<script type="text/javascript">
        	alert("Warring! You have not right!!")
        	location.href="/YongTube_Project/index.jsp";
        </script>
    <%} else if(session.getAttribute("u_id") == null){
    %>
    	<script type="text/javascript">
        	alert("Warring! It's a wrong approach!!")
        	location.href="/YongTube_Project/index.jsp";
        </script>
    <%} %>

    <!-- Head Section -->
    <section class="small-section bg-gray-lighter">
        <div class="relative container align-left">
            
            <div class="row">
                
                <div class="col-md-8">
                    <h1 class="hs-line-11 font-alt mb-20 mb-xs-0">Your Channel</h1>
                    <div class="hs-line-4 font-alt black">
						내가 올린 동영상
                    </div>                    
                </div>
                
                <div class="col-md-4 mt-30">
                    <div class="mod-breadcrumbs font-alt align-right">
                        <a href="./videoUpload.jsp">Video Upload</a>&nbsp;/&nbsp;<span>동영상 업로드 하러가기</span>
                    </div>                    
                </div>
            </div>
        </div>
    </section>
    <!-- End Head Section -->

        <!-- Divider -->
        <hr class="mt-0 mb-0">
        <!-- End Divider -->
        
	<%@ include file="../common/sidebar.jsp" %>

        <!-- Section -->
        
            <section class="page-section">
            
                <div class="container relative">
                    
                    <div class="row multi-columns-row">
                    
                        <!-- Post Item -->
                        <%
                         VideoService videoService = VideoService.getInstance();
                     	ArrayList<VideoDTO> v_list = videoService.videoSearchUID(u_id);
                     	
                     	for(VideoDTO dto : v_list){
                        %>
                        
                         <div class="col-sm-6 col-md-3 col-lg-3 mb-60 mb-xs-40">

                             <div class="post-prev-img"><!-- 썸네일 :: 영상으로 이동 -->
                                 <a href="../VideoView.vd?id=<%= dto.getV_id()%>"><img src="<%=dto.getV_img() %>" alt="" >
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
                             
                             <div class="post-prev-more">
                                 <a href="../UserVideoDelete.us?id=<%= dto.getV_id()%>" class="btn btn-mod btn-gray btn-round">삭제하기<i class="fa fa-angle-right"></i></a>
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
        <script type="text/javascript" src="../style/js/jquery-1.11.2.min.js"></script>
        <script type="text/javascript" src="../style/js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="../style/js/bootstrap.min.js"></script>        
        <script type="text/javascript" src="../style/js/SmoothScroll.js"></script>
        <script type="text/javascript" src="../style/js/jquery.scrollTo.min.js"></script>
        <script type="text/javascript" src="../style/js/jquery.localScroll.min.js"></script>
        <script type="text/javascript" src="../style/js/jquery.viewport.mini.js"></script>
        <script type="text/javascript" src="../style/js/jquery.countTo.js"></script>
        <script type="text/javascript" src="../style/js/jquery.appear.js"></script>
        <script type="text/javascript" src="../style/js/jquery.sticky.js"></script>
        <script type="text/javascript" src="../style/js/jquery.parallax-1.1.3.js"></script>
        <script type="text/javascript" src="../style/js/jquery.fitvids.js"></script>
        <script type="text/javascript" src="../style/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="../style/js/isotope.pkgd.min.js"></script>
        <script type="text/javascript" src="../style/js/imagesloaded.pkgd.min.js"></script>
        <script type="text/javascript" src="../style/js/jquery.magnific-popup.min.js"></script>
        <!-- Replace test API Key "AIzaSyAZsDkJFLS0b59q7cmW0EprwfcfUA8d9dg" with your own one below 
        **** You can get API Key here - https://developers.google.com/maps/documentation/javascript/get-api-key -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAZsDkJFLS0b59q7cmW0EprwfcfUA8d9dg"></script>
        <script type="text/javascript" src="../style/js/gmap3.min.js"></script>
        <script type="text/javascript" src="../style/js/wow.min.js"></script>
        <script type="text/javascript" src="../style/js/masonry.pkgd.min.js"></script>
        <script type="text/javascript" src="../style/js/jquery.simple-text-rotator.min.js"></script>
        <script type="text/javascript" src="../style/js/all.js"></script>
        <script type="text/javascript" src="../style/js/contact-form.js"></script>
        <script type="text/javascript" src="../style/js/jquery.ajaxchimp.min.js"></script>        
        <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
        
</body>
</html>