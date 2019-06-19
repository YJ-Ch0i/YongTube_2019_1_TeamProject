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
	    <%@ include file="common/regiheader.jsp" %>
    <!-- End Navigation panel -->
    </div>

    <!-- Head Section -->
    <section class="small-section bg-gray-lighter">
        <div class="relative container align-left">
            
            <div class="row">
                
                <div class="col-md-8">
                    <h1 class="hs-line-11 font-alt mb-20 mb-xs-0">Register & Join</h1>
                    <div class="hs-line-4 font-alt black">
                    	환영합니다, YongTube입니다.<br><br>
                    	If 이미 가입 하셨다면 로그인을 해주세요.<br>
                    	else if 가입을 하였으나 이메일 인증을 하지 않았다면<br>
                    	이메일 인증을 한 후 나의 채널을 만들어 보세요.<br>
                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!-- End Head Section -->


         <!-- Section -->
     <section class="page-section">
         <div class="container relative">
             
             <!-- Nav Tabs -->
             <div class="align-center mb-40 mb-xxs-30">
                 <ul class="nav nav-tabs tpl-minimal-tabs">
                     
                      <li class="active">
                         
                     </li>
                     
                 </ul>
             </div>
             <!-- End Nav Tabs -->
             
             <!-- Tab panes -->
             <div class="tab-content tpl-minimal-tabs-cont section-text">

                 <div>
                     
                     <!-- Registry Form -->                            
                     <div class="row">
                         <div class="col-md-4 col-md-offset-4">
                             
                             <form class="form contact-form" method="post" id="contact_form" action="UserRegist.us">
                                 <div class="clearfix">
                                     
                                     <!-- Email /UserID -->
                                     <div class="form-group">
	                                 	<label>Email</label>
	                                    <input type="text" name="mail" id="mail" class="input-md round form-control" placeholder="이메일을 입력해주세요" pattern=".{3,100}" required>
                                     </div>                                     
                                                                          
                                     <!-- Password -->
                                     <div class="form-group">
                                     	<label>Password</label>
                                         <input type="password" name="passwd" id="password" class="input-md round form-control" placeholder="비밀번호 확인" pattern=".{5,100}" required>
                                     </div>
                                     
                                     <!-- Re-enter Password -->
                                     <div class="form-group">
                                     	<label>re-Password</label>
                                         <input type="password" name="re-password" id="re-password" class="input-md round form-control" placeholder="비밀번호 확인" pattern=".{5,100}" required>
                                     </div>       

                                     <!-- Username -->
                                     <div class="form-group">
                                     	<label>Name</label>
                                         <input type="text" name="name" id="username" class="input-md round form-control" placeholder="이름을 적어주세요" pattern=".{3,100}" required>
                                     </div>
                                     
                                     <!-- NickName -->
                                     <div class="form-group">
                                     	<label>NickName</label>
                                         <input type="text" name="u_alias" id="u_alias" class="input-md round form-control" placeholder="사용할 닉네임을 적어주세요" pattern=".{3,100}" required>
                                     </div>                                 
                                 </div>
                                 
                                 <!-- Send Button -->
                                 <div class="pt-10">
                                     <button class="submit_btn btn btn-mod btn-medium btn-round btn-full" id="reg-btn">Register</button>
                                 </div>
                                 
                             </form>
                             
                         </div>
                     </div>
                     <!-- End Registry Form -->
                     
                 </div>
                 
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
     
     <%@ include file="../common/footer.jsp" %>
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
        <!-- <script type="text/javascript" src="style/js/contact-form.js"></script> -->
        <script type="text/javascript" src="style/js/jquery.ajaxchimp.min.js"></script>        
        <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
        
</body>
</html>
