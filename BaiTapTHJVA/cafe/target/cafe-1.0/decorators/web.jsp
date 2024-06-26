<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title><dec:title default="Home" /></title>
 <link href="<c:url value='https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- css -->
    <link href="<c:url value='/template/web/css/linearicons.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/web/css/font-awesome.min.css' />" rel="stylesheet" type="text/css" media="all"/>

    <link href="<c:url value='/template/web/css/bootstrap.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/web/css/magnific-popup.css' />" rel="stylesheet" type="text/css" media="all"/>

    <link href="<c:url value='/template/web/css/nice-select.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/web/css/animate.min.css' />" rel="stylesheet" type="text/css" media="all"/>
       
    <link href="<c:url value='/template/web/css/owl.carousel.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/web/css/main.css' />" rel="stylesheet" type="text/css" media="all"/>
    
</head>
<body>
	<!-- header -->
    <%@ include file="/common/web/header.jsp" %>
    <!-- header -->

    <div class="">
    	<dec:body/>
    </div>

	<!-- footer -->
	<%@ include file="/common/web/footer.jsp" %>
	<!-- footer -->
	  <div class="copyright_section">
         <div class="container">
            <p class="copyright_text">2024 All Rights Reserved. Design by <a href="#">Nguyễn Văn Linh</a></p>
         </div>
      </div>

	<script type="text/javascript" src="<c:url value='/template/web/js/jquery.min.js"' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/js/popper.min.js' />"></script>
    
    <script type="text/javascript" src="<c:url value='/template/web/js/bootstrap.bundle.min.js"' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/js/jquery-3.0.0.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/js/plugin.js"' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/js/jquery.mCustomScrollbar.concat.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/js/custom.js' />"></script>    

</body>
</html>