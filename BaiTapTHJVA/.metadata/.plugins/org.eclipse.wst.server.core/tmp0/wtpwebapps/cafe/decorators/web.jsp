<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title><dec:title default="Home" /></title>
 <link href="<c:url value='https://fonts.gstatic.com' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- css -->
    <link href="<c:url value='https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&family=Roboto:wght@400;500;700&display=swap' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css' />" rel="stylesheet" type="text/css" media="all"/>

    <link href="<c:url value='/template/web/lib/owlcarousel/assets/owl.carousel.min.css' />" rel="stylesheet" type="text/css" media="all"/>
    
    <link href="<c:url value='/template/web/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css' />" rel="stylesheet" type="text/css" media="all"/>
       
    <link href="<c:url value='/template/web/css/style.min.css' />" rel="stylesheet" type="text/css" media="all"/>
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

	<script type="text/javascript" src="<c:url value='https://code.jquery.com/jquery-3.4.1.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/lib/easing/easing.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/lib/waypoints/waypoints.min.js' />"></script>  
    <script type="text/javascript" src="<c:url value='/template/web/lib/owlcarousel/owl.carousel.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/lib/tempusdominus/js/moment.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/lib/tempusdominus/js/moment-timezone.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/template/web/mail/jqBootstrapValidation.min.js' />"></script>    
    <script type="text/javascript" src="<c:url value='/template/web/mail/contact.js' />"></script> 
    <script type="text/javascript" src="<c:url value='/template/web/js/main.js' />"></script> 
          
</body>
</html>