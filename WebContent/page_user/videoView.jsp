<%@page import="java.util.ArrayList"%>
<%@page import="service.PlaylistService"%>
<%@page import="service.UserService"%>
<%@page import="user.userDTO.UserDTO"%>
<%@page import="video.videoDTO.VideoDTO"%>
<%@page import="service.VideoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
        <title>Yongtube</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta charset="utf-8">
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
        <div class="page-loader" style="display: none;">
            <div class="loader" style="display: none;">Loading...</div>
        </div>
        <!-- End Page Loader -->
        <!-- Page Wrap -->
        <div class="page" id="top">
            
            <!-- Navigation panel -->
            <%@ include file="../common/header.jsp" %>
            <!-- End Navigation panel -->
            
            
            <!-- Head Section -->
            
            <!-- End Head Section -->
            
            <% 
            	String u_id = "";
            	UserDTO user = new UserDTO();
            	if(session.getAttribute("u_id") != null){
            		u_id = (String) session.getAttribute("u_id");
            		UserService service = UserService.getInstance();
                   	user = service.getUser(u_id);
            	} 
            %>
            
            
            <!-- Section -->
            <section class="page-section">
                <div class="container relative">
                    
                    <div class="row">
                        
                        <!-- Sidebar -->
                        <div class="col-sm-4 col-md-3 sidebar" >
                            
                            <!-- Search Widget -->
                            <div class="widget">
                                <form class="form-inline form" role="form">
                                    <div class="search-wrap">
                                    </div>
                                </form>
                            </div>
                            <!-- End Search Widget -->
                           
                           
                           <%
                           	String pl_id = user.getPl_id();
                   			PlaylistService plService = PlaylistService.getInstance();
                       		ArrayList<VideoDTO> plList = plService.playListSearch(pl_id);
                           %>
                            
                            <!-- Widget -->
                            <div class="widget">
                                
                                <h5 class="widget-title font-alt">My PlayList</h5>
                                
                                <div class="widget-body">
                                    <ul class="clearlist widget-posts">
                                    	<%
                                    		for(VideoDTO dto : plList){
                                    	%>
                                        <li class="clearfix">
                                            <a href="/YongTube_Project/VideoView.vd?id=<%= dto.getV_id()%>"><img src="<%=dto.getV_img()%>" alt="" class="widget-posts-img" /></a>
                                            <div class="widget-posts-descr">                                                                                              
                                            </div>
                                        </li>    
                                        <% } %>                             
                                    </ul>
                                </div>
                                
                            </div>
                            <!-- End Widget -->
                            
                        </div>
                        <!-- End Sidebar -->
                        
                        <!-- Content -->
                        <div class="col-sm-8 col-md-offset-1">
                            
                            <!-- Post -->
                            <div class="blog-item mb-80 mb-xs-40">
                                
                                
	                          <% 
	                          	int v_id = (Integer) request.getAttribute("v_id");
	                          	VideoService videoService = VideoService.getInstance();
	                          	VideoDTO v_dto = videoService.videoSearchVID(v_id);
	                          		                          	                          	
	                          	UserDTO u_dto = videoService.videoUploaderSearch(v_id);
	                          %>
                                
                                <!-- Text -->
    							<div class="blog-item-body">    							    
                                    <h1 class="mt-0 font-alt"><%=v_dto.getV_title() %></h1>                                
    							    
                                    <!-- End Text -->   
                                    
                                    <!-- Media Gallery -->
                                    <div class="blog-media mt-40 mb-40 mb-xs-30">
                                       <ul>
                                            <div class="video">
                                				<iframe width="710" height="399" src="<%=v_dto.getV_path() %>?autoplay=1" 
                                				frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                                				allowfullscreen></iframe>
                           					</div>
                                        </ul>
                                    </div>
    				
                                    
    							</div>
                                <!-- End Text -->
                                <blockquote class="blog-page-title">
                                        <h3>Uploader : <b><%=u_dto.getU_alias() %></b></h3> 
                                        <footer>
                                            	<div class="lead">
			                                        <p>
			                                           	<%=v_dto.getV_desc() %>			                 
			                                        </p>
			                                    </div>
			                                    <div class="blog-item-body">
			                                    
			                                    <%
				                                    if(u_id != ""){				    		                          	
			                                    %>
			                                    
			                                    <form id="playlist_add">
			                                    	<input type="hidden" name="v_pl" id="v_pl" value="<%=user.getPl_id()%>">
			                                    	<input type="hidden" name="v_id" id="v_id" value="<%=v_dto.getV_id()%>">
			                                    	<input type="button" id="addlist" value="재생목록에 추가" class="submit_btn btn btn-mod btn-medium btn-round">
			                                    </form>
			                                    	<% } %>
			                                    </div>                                            
                                  		</footer>
                                        
                                    </blockquote>    							
    						</div>
    						<!-- End Post -->
						
    						
                            <!-- Prev/Next Post -->
                            <div class="clearfix mt-40">
                                
                                
                            </div>
                            <!-- End Prev/Next Post -->
                            
                        </div>
                        <!-- End Content -->
                        
                    </div>
                    
                </div>
            </section>
            <!-- End Section -->
            
            
            <!-- Foter -->
            <%@ include file="../common/footer.jsp" %>
            <!-- End Foter -->
        
        
        </div>
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
        <!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>    --> 
        <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
        <!--<script type="text/javascript" src="../style/js/ajax/addList.js"></script> -->
        <script type="text/javascript">

        $(function() {
            $("#addlist").click(function() {
              var str = $("#playlist_add").serialize();
              
              $.ajax({
                type:"POST",
                url:"/YongTube_Project/AddPlaylist.pl",
                contentType: "application/x-www-form-urlencoded",
                data: str,
                datatype:"json",
                success: function(data) {
                  alert(data.result);			
                },
                error: function(e) {
                  alert("에러발생");
                }			
              });
            });
          });
        </script>
        
    </body>
</html>