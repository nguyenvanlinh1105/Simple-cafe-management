<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
    <c:url var="APIurl" value="/api-datDoUong"/>
<c:url var ="NewURL" value="/web-checkout"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang thanh toán</title>
</head>
<body>
	<div class="container mt-4 mb-5 pb-5">
		<div class="row">
			    <div class="col-sm-12">
			        <c:if test="${not empty messageResponse}">
			            <div class="alert alert-${alert}">
			                ${messageResponse}
			            </div>
			        </c:if> 
			    </div>
			</div>
            <form class="needs-validation" id ="formSubmit" name="frmthanhtoan" method="post" >

                <div class="py-5 text-center" style="
    margin-top: 100px;">
                    <i class="fa fa-credit-card fa-4x" aria-hidden="true"></i>
                    <h1>Bill Thanh toán</h1>
                </div>

                <div class="row">
                    <div class="col-md-5 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">Giỏ hàng</span>
                            <span class="badge badge-secondary badge-pill">2</span>
                        </h4>
                        <ul class="list-group mb-3">
							 <c:forEach var="item" items="${sanPham}">
	                            <li class="list-group-item d-flex justify-content-between lh-condensed">
	                                <div>
	                                    <h6 class="my-0">${item.tenDoUong}</h6>
	                                    <small class="text-muted">${item.donGia}x ${item.soLuong}</small>
	                                </div>
	                                <span class="text-muted">${item.thanhTien}</span>
	                            </li>
                             </c:forEach>

                          
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Tổng thành tiền</span>
                                <strong>${tongTien}</strong>
                            </li>
                            <c:choose>
						    <c:when test="${tongTien eq 0}">
						        <h5 class="text-primary font-weight-bold">Đơn hàng của bạn trống hoặc đã được thanh toán hết.</h5>
						    </c:when>
						</c:choose>
                            
                        </ul>

                    </div>
                    <div class="col-md-7 order-md-1">
                        <h4 class="mb-3">Thông tin khách hàng</h4>

                        <div class="row">
                            <div class="col-md-12">
                                <label for="kh_ten">Tên khách hàng</label>
                                <input type="text" class="form-control"
                                    value="Nguyễn Thị Hiếu" readonly="">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_gioitinh">Giới tính</label>
                                <input type="text" class="form-control" value="Nữ"
                                    readonly="">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_diachi">Địa chỉ</label>
                                <input type="text" class="form-control" 
                                    value="Tam Kì, Quảng Nam" readonly="">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_dienthoai">Điện thoại</label>
                                <input type="text" class="form-control" 
                                    value="0854923235" readonly="">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_email">Email</label>
                                <input type="text" class="form-control" 
                                    value="nguyenthihieu@gmail.com" readonly="">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_ngaysinh">Ngày sinh</label>
                                <input type="text" class="form-control" 
                                    value="21/07/2004" readonly="">
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
              
            </form>
        </div>
        
        <script>
		$('#btnThanhToan').click(function (e) {
		    e.preventDefault();
		    var data = {};
		    var ids = $('.row ul input[type=hidden]').map(function () {
		        return $(this).val();
		    }).get();
		    
		    var phuongThucThanhToan = $('input[name="phThucThanhToan"]:checked').val();
		    data['ids'] = ids;
		    data['phThucThanhToan'] = phuongThucThanhToan;
		    console.log(data)
		    var id = $('#btnThanhToan').val();
		    if (id == "thanh toán") {
		    	updateNew(data);
		    } 
		});

		function updateNew(data) {
		    $.ajax({
		        url: '${APIurl}',
		        type: 'PUT',
		        contentType: 'application/json',
		        data: JSON.stringify(data),
		        dataType: 'json',
		        success: function (result) {
		        	window.location.href = "${NewURL}?message=thanhtoans_success";
		        },
		        error: function (error) {
		        	window.location.href = "${NewURL}?message=thanhtoans_success";
		        }
		    });
		}
		   
		
		    
</script>
</body>
</html>