package com.cafe.model;

import java.sql.Date;

public class HoaDonModel {
	private int MaHoaDon_ID;
	private int MaBan_ID;
	private Double TongTien;
	private Date NgayBan;
	public int getMaHoaDon_ID() {
		return MaHoaDon_ID;
	}
	public void setMaHoaDon_ID(int maHoaDon_ID) {
		MaHoaDon_ID = maHoaDon_ID;
	}
	public int getMaBan_ID() {
		return MaBan_ID;
	}
	public void setMaBan_ID(int maBan_ID) {
		MaBan_ID = maBan_ID;
	}
	public Double getTongTien() {
		return TongTien;
	}
	public void setTongTien(Double tongTien) {
		TongTien = tongTien;
	}
	public Date getNgayBan() {
		return NgayBan;
	}
	public void setNgayBan(Date ngayBan) {
		NgayBan = ngayBan;
	}
	
}