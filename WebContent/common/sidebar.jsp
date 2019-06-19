<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Sidebar -->
   <div class="col-sm-4 col-md-2 sidebar" style="width:15%;position:relative">
       
       <!-- Search Widget -->
       <div class="widget">
           <form class="form-inline form" role="form" method="post" action="./VideoSearch.vd">
               <div class="search-wrap">
               	<input type="text" name="search_title" class="form-control search-field" placeholder="Search Title">
                   <button class="search-button animate" type="submit" title="Start Search">
                       <i class="fa fa-search"></i>
                   </button>     
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

</body>
</html>