<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
    <c:url var="APIurl" value="/api-datDoUong"/>
<c:url var ="CartURL" value="/DoUongDaDat"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script type="text/javascript" src="<c:url value='/template/web/js/bootstrap.min.js' />"></script>
 
<title>Đặt đồ uống</title>
<style>

</style>
</head>
<body>      
            <div class="container py-5 pt-5 " style="
    		padding-top: 150px !important">
                <div class="row g-5 align-items-center">
                	<div class="col-lg-6 video-left">
							<h6>Quy trình pha cà phê.</h6>
							<h1>Chúng tôi chia sẻ trực tiếp <br>
							quá trình pha cà phê của chúng tôi</h1>
							<p><span>Chúng tôi ở đây để lắng nghe bạn mang đến sự hoàn hảo nhất</span></p>
							<p>
								Một sáng sớm, sương buông lành lạnh, ngồi nơi cửa sổ, góc làm việc nhấp một ngụm cà phê đắng chát, bạn có thấy cà phê mang hương vị của cuộc đời? Hương thơm nhẹ nhàng mà quyến luyến quyện vào từng ngụm cà phê đắng, đến sau cùng là vị ngọt quen thuộc nơi cuống họng, chúng ta đều mãn nguyện với thức uống này.
							</p>
							<img class="img-fluid" src="img/signature.png" alt="">
						</div>
                
                    <div class="col-lg-6 text-white">
                     <form class="container-fluid appointment py-5" action="<c:url value='/DoUongDaDat'/>"  id ="formSubmit" style=background:#9b8893 ">
                        <div class="appointment-form p-5" style="background: #dec9da">
                            <h1 class="display-4 mb-4 text-white">Đặt đồ uống ngay🥰</h1>
                                <div class="row gy-3 gx-4">
                                			<div class="col-lg-12">
											    <select class="form-select  border-white w-100 bg-transparent text-dark custom-border" aria-label="Default select example" id="maBan_ID" name="maBan_ID">
											        <option class="" selected>Chọn Bàn</option>
											        <c:forEach var="item" items="${bans}">
											            <option class="text-dark" value="${item.maBan_ID}">${item.tenBan}--${item.trangThai}</option>
											        </c:forEach>
											    </select>
											</div>
                                
                                   	<br class="separator"/>
										<div class="col-lg-12">
											    <select class="form-select border-white w-100 bg-transparent text-dark custom-border" aria-label="Default select example" id="maKhuVuc_ID" name="maKhuVuc_ID">
											        <option class="" selected>Chọn KHU VỰC</option>
											        <c:forEach var="item" items="${khuVuc}">
											            <option class="text-dark" value="${item.maKhuVuc_ID}">${item.moTa}</option>
											        </c:forEach>
											    </select>
											</div>

                                     	<div class="col-lg-12">
                                        <select class="form-select border-white bg-transparent w-100 text-dark custom-border" aria-label="Default select example" id="maDoUong_ID" name="maDoUong_ID">
											        <option class="" selected>Chọn đồ uống</option>
											        <c:forEach var="item" items="${menu}">
											            <option class="text-dark" value="${item.maDoUong_ID}">${item.tenDoUong}------${item.donGia}vnđ</option>
											        </c:forEach>
										</select>
                                    </div>
                                    
                                    <div class="col-lg-12">
                                        <input type="text" class="form-control border-white bg-transparent text-white" id="soLuong" name ="soLuong" placeholder="Nhập số lượng cần đặt?">
                                    </div>
                                    
                                    <div class="col-lg-12">
                                        <button type="button" id="datHang" class="btn btn-primary btn-primary-outline-0 w-100 py-3 px-5">Đăt đồ uống</button>      
                                    </div>
                                </div>
                        </div>        </form>
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
	            	window.location.href = "${CartURL}?message=dht_success";
	            },
	            error: function (error) {
	            	window.location.href = "${CartURL}?message=dht_lose";
	            }
	        });
		 }
	</script>
</body>
</html>