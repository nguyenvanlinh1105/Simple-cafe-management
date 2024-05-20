<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
    <c:url var="APIurl" value="/api-datDoUong"/>
<c:url var ="CartURL" value="/DoUongDaDat"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/template/web/css/styleDatHang.css' />" rel="stylesheet" type="text/css" media="all"/>
 <link href="<c:url value='/template/web/css/css/bootstrap.min.css' />" rel="stylesheet" type="text/css" media="all"/>
<title>Grand Coffe</title>
<style>

</style>
</head>
<body>      
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 text-white">
                     <form class="container-fluid appointment py-5" action="<c:url value='/DoUongDaDat'/>"  id ="formSubmit" style=background:burlywood ">
                        <div class="appointment-form p-5" style="background: #cbcab0">
                            <p class="fs-4 text-uppercase text-primary">Đăt đồ uống ngay</p>
                            <h1 class="display-4 mb-4 text-white">Điền thông tin!</h1>
                                <div class="row gy-3 gx-4">
                                			<div class="col-lg-12">
											    <select class="form-select py-3 border-white w-100 bg-transparent text-dark custom-border" aria-label="Default select example" id="maBan_ID" name="maBan_ID">
											        <option class="" selected>Chọn Bàn</option>
											        <c:forEach var="item" items="${bans}">
											            <option class="text-dark" value="${item.maBan_ID}">${item.tenBan}--${item.trangThai}</option>
											        </c:forEach>
											    </select>
											</div>
                                
                                   	<br class="separator"/>
										<div class="col-lg-12">
											    <select class="form-select py-3 border-white w-100 bg-transparent text-dark custom-border" aria-label="Default select example" id="maKhuVuc_ID" name="maKhuVuc_ID">
											        <option class="" selected>Chọn KHU VỰC</option>
											        <c:forEach var="item" items="${khuVuc}">
											            <option class="text-dark" value="${item.maKhuVuc_ID}">${item.moTa}</option>
											        </c:forEach>
											    </select>
											</div>

                                     	<div class="col-lg-12">
                                        <select class="form-select py-3 border-white bg-transparent w-100 text-dark custom-border" aria-label="Default select example" id="maDoUong_ID" name="maDoUong_ID">
											        <option class="" selected>Chọn đồ uống</option>
											        <c:forEach var="item" items="${menu}">
											            <option class="text-dark" value="${item.maDoUong_ID}">${item.tenDoUong}------${item.donGia}vnđ</option>
											        </c:forEach>
										</select>
                                    </div>
                                    
                                    <div class="col-lg-12">
                                        <input type="text" class="form-control py-3 border-white bg-transparent text-white" id="soLuong" name ="soLuong" placeholder="Nhập số lượng cần đặt?">
                                    </div>
                                    
                                    <div class="col-lg-12">
                                        <button type="button" id="datHang" class="btn btn-primary btn-primary-outline-0 w-100 py-3 px-5">Đăt đồ uống</button>      
                                    </div>
                                </div>
                        </div>        </form>
                    </div>
                    <div class="col-lg-6">
                       <div class="">
				               <div class="gallery_section_2">
				                	<div class="row">
						               <div class="col-sm-12">
						                  <h1 class="gallery_taital">Các món đồ uống của chúng tôi</h1>
						                  <p class="gallery_text">
						                     Quán cà phê có thực đơn đa dạng với các loại cà phê rang xay thơm ngon, 
						                     trà thảo mộc tinh tế, sinh tố tươi mát và nhiều loại đồ uống đặc biệt khác, đảm bảo làm hài lòng mọi sở thích của khách hàng.</p>
						               </div>
						            </div>
				                  <div class="row">
				                     <div class="col-md-4">
				                        <div class="container_main">
				                           <img src="template/web/images/img-1.png" alt="Avatar" class="image">
				                           <div class="overlay">
				                              <div class="text"><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></div>
				                           </div>
				                        </div>
				                     </div>
				                     <div class="col-md-4">
				                        <div class="container_main">
				                           <img src="template/web/images/img-2.png" alt="Avatar" class="image">
				                           <div class="overlay">
				                              <div class="text"><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></div>
				                           </div>
				                        </div>
				                     </div>
				                     <div class="col-md-4">
				                        <div class="container_main">
				                           <img src="template/web/images/img-3.png" alt="Avatar" class="image">
				                           <div class="overlay">
				                              <div class="text"><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></div>
				                           </div>
				                        </div>
				                     </div>
				                  </div>
				               </div>
				               <div class="gallery_section_2">
				                  <div class="row">
				                     <div class="col-md-4">
				                        <div class="container_main">
				                           <img src="template/web/images/img-4.png" alt="Avatar" class="image">
				                           <div class="overlay">
				                              <div class="text"><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></div>
				                           </div>
				                        </div>
				                     </div>
				                     <div class="col-md-4">
				                        <div class="container_main">
				                           <img src="template/web/images/img-5.png" alt="Avatar" class="image">
				                           <div class="overlay">
				                              <div class="overlay">
				                                 <div class="text"><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></div>
				                              </div>
				                           </div>
				                        </div>
				                     </div>
				                     <div class="col-md-4">
				                        <div class="container_main">
				                           <img src="template/web/images/img-6.png" alt="Avatar" class="image">
				                           <div class="overlay">
				                              <div class="overlay">
				                                 <div class="text"><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></div>
				                              </div>
				                           </div>
				                        </div>
				                     </div>
				                  </div>
				               </div>				               
				            </div>
                    </div>
                </div>
            </div>

        <!-- Appointment End -->
<script type="text/javascript" src="<c:url value='https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js' />"></script>
<script type="text/javascript">

	$('#datHang').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
	        data[""+v.name+""] = v.value;
	        console.log(v.name+" "+v.value)
	    });
	    	datDichVu(data)
	})

		 function datDichVu(data) {
	        $.ajax({
	            url: '${APIurl}',
	            type: 'POST',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            success: function (result) {
	            	window.location.href = "${CartURL}?message=dhtc_success";
	            },
	            error: function (error) {
	            	window.location.href = "${CartURL}?message=dhtb_lose";
	            }
	        });
		 }
	</script>
</body>
</html>