package com.cafe.utils;

import javax.servlet.http.HttpServletRequest;

public class MessageUtil{
	public static void showMessage(HttpServletRequest req) {
		if(req.getParameter("message")!=null) {
			String messageResponse="";
			String alert ="";
			String message =req.getParameter("message");
			if(message.equals("insert_success")) {
				messageResponse="Thêm thành công !";
				alert="success";
			}else if(message.equals("update_success")) {
				messageResponse="Cập nhật thành công !";
				alert="success";
			}else if(message.equals("delete_success")) {
				messageResponse="Xóa thành công !";
				alert="success";
			}else if(message.equals("error_system")) {
				messageResponse="Thất bại !, có lỗi từ thông tin đầu vào.";
				alert="danger";
			}
			else if(message.equals("dht_success")) {
				messageResponse="Bạn đã đặt đồ uống thành công, SHOP cảm ơn bạn!";
				alert="success";
			}else if(message.equals("dhtb_lose")) {
				messageResponse="Bạn đã đặt đồ uống thất bại 😭, vui lòng gửi lại thông tin cho shop!";
				alert="danger";
			}else if(message.equals("thanhtoans_success")) {
				messageResponse="Bạn đã thanh toán dịch vụ thành công, GrandCoffee cảm ơn bạn 🥰!";
				alert="success";
			}
			req.setAttribute("messageResponse",messageResponse);
			req.setAttribute("alert", alert);
		}
	}
}
