package com.cafe.model;

import java.sql.Date;

public class DonGiaModel {
	private int DonGia_ID;
	private int MaDoUong_ID;
	private Date TuNgay;
	private Date DenNgay;
	private String MoTa;
	public int getDonGia_ID() {
		return DonGia_ID;
	}
	public void setDonGia_ID(int donGia_ID) {
		DonGia_ID = donGia_ID;
	}
	public int getMaDoUong_ID() {
		return MaDoUong_ID;
	}
	public void setMaDoUong_ID(int maDoUong_ID) {
		MaDoUong_ID = maDoUong_ID;
	}
	public Date getTuNgay() {
		return TuNgay;
	}
	public void setTuNgay(Date tuNgay) {
		TuNgay = tuNgay;
	}
	public Date getDenNgay() {
		return DenNgay;
	}
	public void setDenNgay(Date denNgay) {
		DenNgay = denNgay;
	}
	public String getMoTa() {
		return MoTa;
	}
	public void setMoTa(String moTa) {
		MoTa = moTa;
	}
	
}
