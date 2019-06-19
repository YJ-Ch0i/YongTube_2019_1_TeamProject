<%@page import="video.videoDTO.VideoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="service.PlaylistService"%>
<%@page import="user.userDTO.UserDTO"%>
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
        	String u_id="";
        	if(session.getAttribute("u_id") == null){	
        %>
        <script>
        	alert("Warring! It's a wrong approach!!")
        	location.href="/YongTube_Project/index.jsp";
        </script>
        <% } else if(session.getAttribute("u_id") != null){
        	u_id = (String) session.getAttribute("u_id");
        }
        
       	UserService service = UserService.getInstance();
       	UserDTO user = service.getUser(u_id);
		int poss = (user.isPossibility()) ? 1 : 0;
    	
    	if(poss == 0){ %>
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
        
        
        
        <!-- Page Loader -->        
        <div class="page-loader">
            <div class="loader">Loading...</div>
        </div>
        <!-- End Page Loader -->
        
        <!-- Page Wrap -->
        <div class="page" id="top">
            
            <!-- Navigation panel -->
            <%@ include file="../common/header.jsp" %>
            <!-- End Navigation panel -->
        </div>       
        
            <!-- Head Section -->
            <section class="small-section bg-gray-lighter">
                <div class="relative container align-left">
                    
                    <div class="row">
                        
                        <div class="col-md-8">
                            <h1 class="hs-line-11 font-alt mb-20 mb-xs-0">Your Play List</h1>
                            <div class="hs-line-4 font-alt black">
                                	당신이 선택한 동영상
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
            
            
            <!-- Section -->
            <section class="page-section">
                <div class="container relative" style="margin-left: 10px;">
                    
                    <div class="row">
                    <!-- Sidebar -->
                        <div class="col-sm-4 col-md-3 col-md-offset-1 sidebar" style="margin-top:50px">
                            
                            <!-- Search Widget -->
                            <div class="widget">
                                <form class="form-inline form" role="form">
                                    <div class="search-wrap">
                                        <button class="search-button animate" type="submit" title="Start Search">
                                            <i class="fa fa-search"></i>
                                        </button>
                                        <input type="text" class="form-control search-field" placeholder="Search...">
                                    </div>
                                </form>
                            </div>
                            <!-- End Search Widget -->
                            
                            <!-- Widget -->
                            <div class="widget">
                                
                                <h5 class="widget-title font-alt">Categories</h5>
                                
                                <div class="widget-body">
                                    <ul class="clearlist widget-menu">
                                        <li>
                                            <a href="#" title="">Branding</a>
                                            <small>
                                                - 7
                                            </small>
                                        </li>
                                        <li>
                                            <a href="#" title="">Design</a>
                                            <small>
                                                - 15
                                            </small>
                                        </li>
                                        <li>
                                            <a href="#" title="">Development</a>
                                            <small>
                                                - 3
                                            </small>
                                        </li>
                                        <li>
                                            <a href="#" title="">Photography</a>
                                            <small>
                                                - 5
                                            </small>
                                        </li>
                                        <li>
                                            <a href="#" title="">Other</a>
                                            <small>
                                                - 1
                                            </small>
                                        </li>
                                    </ul>
                                </div>
                                
                            </div>
                            <!-- End Widget -->
                        </div>
                        <!-- End Sidebar -->
                        
                        <!-- Content -->
                        <div class="col-sm-8">
                            <div class="row multi-columns-row">
                            
                            <%
                            	String pl_id = user.getPl_id();
                            	PlaylistService plService = PlaylistService.getInstance();
                            	ArrayList<VideoDTO> plList = plService.playListSearch(pl_id);                                                        
                            %>
                        		
                        		<section class="page-section bg-gray-lighter pt-80 pt-sm-60 pt-xs-40" style="margin-top:10%">
                        			<div class="relative">
                        			
                        			<!-- Works Grid -->
                        			<ul class="works-grid work-grid-3 clearfix font-alt hide-titles hover-white">
                        			
                        			<!-- Widget -->
                            		<div class="widget">
                                
                                	<h5 class="widget-title font-alt" style="padding-left: 30px;">PlayList</h5>
                                
                                	<div class="widget-body"  style="margin-left:10px">
                                    	<ul class="clearlist widget-posts" >
                                    	
                                    	<%
                                    		for(VideoDTO dto : plList){
                                    	%>
                                    	
                                       		<li class="clearfix" style="padding-left: 20px;">
                                            	<a href="../VideoView.vd?id=<%= dto.getV_id()%>"><img src="<%=dto.getV_img()%>" alt="" class="widget-posts-img" style="width:193px; height:108px;"/></a>
                                       	 	    <div class="widget-posts-descr" style="padding-left:15px">
                                                <a href="#" title=""><%=dto.getV_title() %></a>
                                                <%=dto.getV_desc() %>
                                                <%=dto.getUpdated() %>
                                            	</div>
                                            	<div class="widget-posts-descr" style="padding-left:15px; margin-top:15px;">
                                            		<button type="submit" class="submit_btn btn btn-mod btn-medium btn-round">삭제하기</button>
                                            	</div>
                                        	</li>
                                        	<% } %>
                                    	</ul>
                                	</div>
                                </div>
                            	<!-- End Widget -->
                    			</ul>
                    			<!-- End Works Grid -->
                				</div>
            				</section>
            				<!-- End Portfolio Section -->
                            </div>
                        </div>
                        <!-- End Content --> 
                        
                    </div>
                    
                </div>
            </section>
            <!-- End Section -->
            
            
            <!-- Foter -->
            	<%@ include file="../common/footer.jsp" %>
            <!-- End Foter -->

        <!-- End Page Wrap -->
        
        
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
