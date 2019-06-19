<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Page Loader -->        
	<div class="page-loader">
	    <div class="loader">Loading...</div>
	</div>
	<!-- End Page Loader -->

		<%
			if(session.getAttribute("u_id") != null){
		%>

	<!-- Page Wrap -->
	<div class="page" id="top">
    
	    <!-- Navigation panel -->
	    <nav class="main-nav js-stick">
	        <div class="full-wrapper relative clearfix">
	        	<!-- Logo ( * your text or image into link tag *) -->
	        	<div class="nav-logo-wrap local-scroll">
	            	<a href="index.jsp" class="logo">
	                	<img src="style/images/logo03.png" alt="" />
	            	</a>
	        	</div>
	        	<div class="mobile-nav">
	            	<i class="fa fa-bars"></i>
	        	</div>

		        <!-- Main Menu -->
		        <div class="inner-nav desktop-nav">
		            <ul class="clearlist">

		                <!-- Divider -->
		                <li><a>&nbsp;</a></li>
		                <!-- End Divider -->

						<li class="active"><a href="mychannel.jsp">환영합니다</a></li>
		                <li class="active"><a href="index.jsp">Home</a></li>
		                <li class="active"><a href="/YongTube_Project/page_user/userChannel.jsp">My Channel</a></li>
		                <li class="active"><a href="/YongTube_Project/page_user/userPlaylist.jsp">My PlayList</a></li>
		                <li><a href="/YongTube_Project/UserLogout.us">Logout</a></li>

              		</ul>
          		</div>
          <!-- End Main Menu -->
            <!-- Main Menu -->
	            <div class="inner-nav desktop-nav">
	                <ul class="clearlist">
	                   	                 	
	                    <!-- Start Search -->
	                    <li>
                     		<a href="#" class="mn-has-sub"><i class="fa fa-search"></i> Search</a>
	
	                     	<ul class="mn-sub">
                         		<li>
                            		<div class="mn-wrap">
                                 		<form method="post" class="form">
                                   			<div class="search-wrap">
		                                        <button class="search-button animate" type="submit" title="Start Search">
		                                            <i class="fa fa-search"></i>
		                                        </button>
		                                        <input type="text" id="search_title" name="search_title" class="form-control search-field" placeholder="Search Title">
                                     		</div>
	                                 	</form>
	                             	</div>
	                         	</li>
	                     	</ul>
	                 	</li>
	                 </ul>        
	            </div>
            <!-- End Search -->

    	</div>
    </nav>
    </div>
    <!-- End Navigation panel -->
    
    <% } else if(session.getAttribute("admin_id") != null){		%>
    <!-- Page Wrap -->
	<div class="page" id="top">
    
	    <!-- Navigation panel -->
	    <nav class="main-nav js-stick">
	        <div class="full-wrapper relative clearfix">
	        	<!-- Logo ( * your text or image into link tag *) -->
	        	<div class="nav-logo-wrap local-scroll">
	            	<a href="index.jsp" class="logo">
	                	<img src="style/images/logo03.png" alt="" />
	            	</a>
	        	</div>
	        	<div class="mobile-nav">
	            	<i class="fa fa-bars"></i>
	        	</div>

		        <!-- Main Menu -->
		        <div class="inner-nav desktop-nav">
		            <ul class="clearlist">

		                <!-- Divider -->
		                <li><a>&nbsp;</a></li>
		                <!-- End Divider -->

						<li class="active"><a href="mychannel.jsp"><%=session.getAttribute("admin_id") %>환영합니다</a></li>
		                <li class="active"><a href="index.jsp">Home</a></li>
   		                <li class="active"><a href="/YongTube_Project/page_admin/adminMemberManager.jsp">Member Management</a></li>
		                <li class="active"><a href="/YongTube_Project/page_admin/adminVideoManager.jsp">Video Management</a></li>
		                <li class="active"><a href="/YongTube_Project/UserLogout.us">Logout</a></li>

              		</ul>
          		</div>
          <!-- End Main Menu -->
            <!-- Main Menu -->
	            <div class="inner-nav desktop-nav">
	                <ul class="clearlist">
	                   	                 	
	                    <!-- Start Search -->
	                    <li>
                     		<a href="#" class="mn-has-sub"><i class="fa fa-search"></i> Search</a>
	
	                     	<ul class="mn-sub">
                         		<li>
                            		<div class="mn-wrap">
                                 		<form method="post" class="form">
                                   			<div class="search-wrap">
		                                        <button class="search-button animate" type="submit" title="Start Search">
		                                            <i class="fa fa-search"></i>
		                                        </button>
		                                        <input type="text" id="search_title" name="search_title" onkeyup="searchFunction();" class="form-control search-field" placeholder="Search Title">
		                                        <button class="search-button" onclick="searchFunction();" type="button">검색</button>
                                     		</div>
	                                 	</form>
	                             	</div>
	                         	</li>
	                     	</ul>
	                 	</li>
	                 </ul>        
	            </div>
            <!-- End Search -->

    	</div>
    </nav>
    </div>
    <!-- End Navigation panel -->
    <% } else{ %>

    <!-- Page Wrap -->
	<div class="page" id="top">
    
	    <!-- Navigation panel -->
	    <nav class="main-nav js-stick">
	        <div class="full-wrapper relative clearfix">
	        	<!-- Logo ( * your text or image into link tag *) -->
	        	<div class="nav-logo-wrap local-scroll">
	            	<a href="index.jsp" class="logo">
	                	<img src="style/images/logo03.png" alt="" />
	            	</a>
	        	</div>
	        	<div class="mobile-nav">
	            	<i class="fa fa-bars"></i>
	        	</div>

		        <!-- Main Menu -->
		        <div class="inner-nav desktop-nav">
		            <ul class="clearlist">

		                <!-- Divider -->
		                <li><a>&nbsp;</a></li>
		                <!-- End Divider -->						
		                <li class="active"><a href="index.jsp">Home</a></li>
						<li class="active"><a href="userLogin.jsp">Login</a></li>
						<li class="active"><a href="userRegister.jsp">Register</a></li>		                

              		</ul>
          		</div>
          <!-- End Main Menu -->
            <!-- Main Menu -->
	            <div class="inner-nav desktop-nav">
	                <ul class="clearlist">
	                   	                 	
	                    <!-- Start Search -->
	                    <li>
                     		<a href="#" class="mn-has-sub"><i class="fa fa-search"></i> Search</a>
	
	                     	<ul class="mn-sub">
                         		<li>
                            		<div class="mn-wrap">
                                 		<form method="post" class="form">
                                   			<div class="search-wrap">
		                                        <button class="search-button animate" type="submit" title="Start Search">
		                                            <i class="fa fa-search"></i>
		                                        </button>
		                                        <input type="text" id="search_title" name="search_title" class="form-control search-field" placeholder="Search Title">
                                     		</div>
	                                 	</form>
	                             	</div>
	                         	</li>
	                     	</ul>
	                 	</li>
	                 </ul>        
	            </div>
            <!-- End Search -->

    	</div>
    </nav>
    </div>
    <!-- End Navigation panel -->
    <% } %>