<%@page import="channel.channelDTO.ChannelDTO"%>
<%@page import="service.ChannelService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        
        <!-- Page Loader -->        
        <div class="page-loader">
            <div class="loader">Loading...</div>
        </div>
        <!-- End Page Loader -->
        <!-- Page Wrap -->
        <div class="page" id="top">
        
        <%
        	if(session.getAttribute("u_id") == null){	
        %>
        <script>
        	alert("Warring! It's a wrong approach!!")
        	location.href="/YongTube_Project/index.jsp";
        </script>
        <% } %>
            
            <!-- Navigation panel -->
           		<%@ include file="../common/header.jsp" %>
            <!-- End Navigation panel -->
            <%
            	String u_id = "";
            	if(session.getAttribute("u_id") != null){
            		u_id = (String) session.getAttribute("u_id");
            	} %>            
            
            <!-- Head Section -->
            <section class="small-section bg-gray-lighter">
                <div class="relative container align-left">
                    
                    <div class="row">
                        
                        <div class="col-md-8">
                            <h1 class="hs-line-11 font-alt mb-20 mb-xs-0">Video Upload</h1>
                            <div class="hs-line-4 font-alt black">
                                	당신이 좋아하는 동영상을 공유 해주세요.
                            </div>
                        </div>
                        
                        <div class="col-md-4 mt-30">
                            <div class="mod-breadcrumbs font-alt align-right">
                            </div>                            
                        </div>
                    </div>
                    
                </div>
            </section>
            <!-- End Head Section -->
            
            
            <!-- Section -->
            <section class="page-section">
                <div class="container relative">
                    
                    <div class="row">
                     
                        <!-- Content -->
                        <div class="col-sm-8 col-md-offset-1">
                            
                            <!-- Post -->
                            <div class="blog-item mb-80 mb-xs-40">
    						</div>
    						<!-- End Post -->

    						<!-- Add Comment -->
    						<div class="mb-80 mb-xs-40">
    							
                                <h4 class="blog-page-title font-alt">동영상 업로드</h4>
                                
                                <%
                                	ChannelService service = ChannelService.getInstance();
                                	ChannelDTO channelDTO = new ChannelDTO(); 
                                	channelDTO = service.selectChannel(u_id);
                                %>
                                
    							<!-- Form -->
                                <form method="post" action="../VideoRegist.vd" id="form" role="form" class="form">
                                    
                                    <div class="row mb-20 mb-md-10">
                                        
                                        <div class="col-md-6 mb-md-10">
                                            <!-- title -->
                                            <input type="text" name="v_title" id="v_title" class="input-md form-control" placeholder="제목 *" maxlength="100" required>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <!-- title -->
                                            
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="mb-20 mb-md-10">
                                        <!-- link -->
                                        <img id="img_changer" src="#" alt="" />
                                        <input type="text" name="v_path" id="v_path" class="input-md form-control" placeholder="링크 *" maxlength="100" required>
                                    	<div class="align-right pt-10">
                                           <button type="button" id="img_change_click" class="submit_btn btn btn-mod btn-medium btn-round">동영상 확인</button>
                                           <input type="hidden" id="img_path" name="v_img" value="">   
                                           <input type="hidden" id="getRealvpath" name="getRealvpath" value="">                             
                                        </div>
                                    </div>
                                    <!-- channel ID hidden -->
                                    <input type="hidden" name="ch_id" value="<%=channelDTO.getCh_id() %>">                                   
                                    <!-- Explanation -->
                                    <div class="mb-30 mb-md-10">
                                        <textarea name="v_desc" id="v_desc" class="input-md form-control" rows="6" placeholder="설명" maxlength="400"></textarea>
                                    </div>
                                    
                                    <!-- Send Button -->
                                    <button type="submit" class="btn btn-mod btn-medium" name="upload_btn">
                                        Upload
                                    </button>
    								
                                </form>
    							<!-- End Form -->    								
    						</div>
    						<!-- End Add Comment -->
                        </div>
                        <!-- End Content -->
                    </div>                    
                </div>
            </section>
            <!-- End Section -->
            <%
            	//<iframe width="972" height="547" src="https://www.youtube.com/embed/h2TLNdaQkL4?list=RDFM7MFYoylVs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            	// https://youtu.be/embed/h2TLNdaQkL4      
            	// https://www.youtube.com/embed/h2TLNdaQkL4
            	// https://youtu.be/h2TLNdaQkL4
            %>
            
            <!-- Foter -->
            <%@ include file="../common/footer.jsp" %>
            <!-- End Foter -->
        
        
        </div>
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
        
        <script type="text/javascript" src="../style/js/v_img_change.js"></script>


    </body>
</html>
