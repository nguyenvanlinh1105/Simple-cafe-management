package com.cafe.model;

public class SanPhamDoUongCartModel extends AbstractModel<SanPhamDoUongCartModel> {
	private int  maHoaDon_ID;
	private int maChiTiet_ID;
	private int maBan_ID;
	private Double donGia;
	private int soLuong;
	private Double thanhTien;
	private String tenBan;
	private String tenDoUong;
	
	
	
	public int getMaHoaDon_ID() {
		return maHoaDon_ID;
	}
	public void setMaHoaDon_ID(int maHoaDon_ID) {
		this.maHoaDon_ID = maHoaDon_ID;
	}
	public int getMaChiTiet_ID() {
		return maChiTiet_ID;
	}
	public void setMaChiTiet_ID(int maChiTiet_ID) {
		this.maChiTiet_ID = maChiTiet_ID;
	}
	public int getMaBan_ID() {
		return maBan_ID;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public void setMaBan_ID(int maBan_ID) {
		this.maBan_ID = maBan_ID;
	}
	public Double getDonGia() {
		return donGia;
	}
	public void setDonGia(Double donGia) {
		this.donGia = donGia;
	}
	public Double getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(Double thanhTien) {
		this.thanhTien = thanhTien;
	}
	public String getTenBan() {
		return tenBan;
	}
	public void setTenBan(String tenBan) {
		this.tenBan = tenBan;
	}
	public String getTenDoUong() {
		return tenDoUong;
	}
	public void setTenDoUong(String tenDoUong) {
		this.tenDoUong = tenDoUong;
	}
	
	public Double tongTienDonHang() {
		return this.thanhTien;
	}
}
