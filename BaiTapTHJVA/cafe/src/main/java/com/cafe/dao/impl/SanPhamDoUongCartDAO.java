package com.cafe.dao.impl;

import java.util.List;

import com.cafe.mapper.SanPhamDoUongCartMapper;
import com.cafe.model.SanPhamDoUongCartModel;

public class SanPhamDoUongCartDAO extends AbstractDAO<SanPhamDoUongCartDAO> {

	private String maBan1;
	public List<SanPhamDoUongCartModel> findAllSanPham(String maBan) {
		maBan1 = maBan;
		String sql = "{CALL LayMonDaDatTheoMaBan (?) }";
		return query(sql,new SanPhamDoUongCartMapper(), maBan);
	}
	
	public Double tinhTongTien() {
		Double tongTien = (double) 0;
		
	    for (SanPhamDoUongCartModel donHangCart : findAllSanPham(maBan1)) {
	        
	            tongTien += donHangCart.getThanhTien();
	        
	    }
	    return tongTien;
	}

	public void deleteChiTietDonHang(int maHoaDon_ID,int maChiTiet_ID){
		String sql = "{CALL XoaChiTietHoaDon (?,?)}";
		update(sql, maHoaDon_ID,maChiTiet_ID);
	}
	
	public void deleteChiTietHoaDon(String[] ids) {
	    for(String id : ids) { 
	        String[] parts = id.split("-");
	       
	        if(parts.length == 2) {
	            try {
	                int maHoaDon_ID = Integer.parseInt(parts[0]); 
	                int maChiTiet_ID = Integer.parseInt(parts[1]);        
	                deleteChiTietDonHang(maHoaDon_ID, maChiTiet_ID);
	            } catch (NumberFormatException e) {
	                System.err.println("Lỗi chuyển đổi kiểu dữ liệu: " + e.getMessage());
	            }
	        } else {
	            System.err.println("Chuỗi không hợp lệ: " + id);
	        }
	    }
	}


}
