<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-xoaDoUong"/>
<c:url var ="NewURL" value="/DoUongDaDat"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách đồ uống của bạn</title>
</head>
<body style="
    background: #fff">
	<div class="container mt-4 mb-5 pb-5" style="
    		padding-top: 150px !important; background:#fff" >
	<form  id="formSubmit" method="get">
            <div id="thongbao" class="alert alert-danger d-none face" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>

			<form action="<c:url value='/DatDoUong'/>" class="card-body ">
				<div class="container mt-5">
				    <div class="row align-items-center">
				        <div class="col-lg-8">
				            <div class="row align-items-center mb-3">
				                <div class="col-md-6">
				                    <h3 class="mb-0 text-dark">Chọn bàn cần thanh toán:</h6>
				                </div>
				                <div class="col-lg-6" style="font-size: 20px">
								    <select class="form-select py-3 border-white w-100 bg-transparent text-dark custom-border" aria-label="Default select example" style= "height: 100px ; background:#fff !important" id="maBan_ID" name="maBan_ID" >
								        <option class="" selected>Chọn Bàn</option>
								        <c:forEach var="item" items="${bans}">
								            <option class="text-dark" value="${item.maBan_ID}">${item.tenBan}</option>
								        </c:forEach>
								    </select>
								</div>
				            </div>
				        </div>
				        <div class="col-lg-4 d-flex justify-content-lg-start justify-content-md-end">
				            <button type="submit" id="btnUser" class="btn btn-primary px-4">Xem chi chi tiết đồ uống của bàn</button>
				        </div>
				    </div>
				</div>
									
			</form>	 
            <div class="row">
				<div class="col-xs-12">
					<c:if test="${not empty messageResponse}">
						<div class="alert alert-${alert}">
									 ${messageResponse} 
						</div>
					</c:if>
					<div class="widget-box table-filter">
    					<div class="table-btn-controls d-flex justify-content-between align-items-center pr-4 justify-content-end" style="float: right">
                                  <div class="mb-2">
                                      <a flag="info" class="dt-button buttons-colvis btn btn-white btn-primary btn-bold " data-toggle="tooltip" title='Thêm đồ uống' href='<c:url value="/DatDoUong"/>'>
                                          <span style="font-weight: 900;color: #2522d2;">
                                              <i class="fa fa-plus-circle bigger-110 purple"></i> Đạt thêm đồ uống 
                                          </span>
                                      </a>
                                      <button id="btnDelete" type="button" class="dt-button buttons-html5 btn btn-white btn-primary btn-bold " data-toggle="tooltip" title='Xóa dịch vụ'>
                                          <span  style="font-weight: 900; color: #2522d2;" >
                                              Xóa đồ uống <i class="fa fa-trash-o bigger-110 pink"></i>
                                          </span>
                                      </button>
                                  </div>
                              </div>	
						</div>
					 </div>
		        </div>
            <div class="row" style="
    background: #fff">
                <div class="col col-md-12">
                    <table class="table table-bordered">
                        <thead>
                            <tr class="bg-pink"style= "background: #c5c5ce">
                                <th>Check</th>
                                <th>Mã bàn</th>
                                <th>Tên bàn</th>
                                <th>Tên đồ uống</th>
                                <th>Số lượng</th>
                                <th>Đơn giá</th>
                                <th>Thành tiền</th>
                            </tr>
                        </thead>
                        <tbody id="datarow">
                        <c:forEach var="item" items="${sanPham}">
                            <tr>
                               <td><input type="checkbox" id="" value="${item.maHoaDon_ID }-${item.maChiTiet_ID}"></td>

                                <td>${item.maBan_ID}</td>
                                <td>${item.tenBan}</td>
                                <td class="text-right">${item.tenDoUong}</td>
                                <td class="text-right">${item.soLuong}</td>
                                <td class="text-right">${item.donGia}</td>
                                <td class="text-right">${item.thanhTien}</td>                                
                            </tr>
                           </c:forEach>
                        </tbody>
                    </table>
						<div class="float-right d-flex justify-content-between align-items-center pr-4 justify-content-end">
						    <div class="rounded p-2 bg-info text-white">
						        Số tiền bạn cần phải thanh toán là:${tongTien} vnđ
						    </div>
						</div>
                    <a href='<c:url value="/trang-chu"/>' class="btn btn-warning btn-md mt-4 mb-4 "><i class="fa fa-arrow-left"
                            aria-hidden="true"></i>&nbsp;Quay
                        về trang chủ</a>
                        
                    <a href='<c:url value="/web-checkout?maBan_ID=5"/>' class="btn btn-primary btn-md mt-4 mb-4 "><i
                            class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;Thanh toán</a>
                </div>
            </div>
            </form>
        </div>
          <script type="text/javascript" src="<c:url value='https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js' />"></script>
          <script type="text/javascript">

		$("#btnDelete").click(function(){
			var data ={};
			var ids = $('tbody input[type=checkbox]:checked').map(function () {
	            return $(this).val();
	        }).get();
			data['ids'] = ids;
			console.log(data)
			deleteDV(data);
		})

		 function deleteDV(data) {
	        $.ajax({
	            url: '${APIurl}',
	            type: 'DELETE',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            success: function (result) {
	            	console.log(result);
	            	window.location.href = "${NewURL}?&message=delete_success";
	            },
	            error: function (error) {
	            	window.location.href = "${NewURL}?&message=error_system";
	            }
	        });
		 }
	</script>
          
</body>
</html>