<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
              <li><a href="userLogin.jsp">Login</a></li>
              <li><a href="userRegister.jsp">Register</a></li>

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
                                      <input type="text" class="form-control search-field" placeholder="Search...">
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
