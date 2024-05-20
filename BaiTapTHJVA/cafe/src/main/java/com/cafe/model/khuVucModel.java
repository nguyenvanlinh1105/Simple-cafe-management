package com.cafe.model;

public class khuVucModel extends AbstractModel<khuVucModel> {
	private int maKhuVuc_ID;
	private String tenKhuVuc;
	private String moTa;
	public int getMaKhuVuc_ID() {
		return maKhuVuc_ID;
	}
	public void setMaKhuVuc_ID(int maKhuVuc_ID) {
		this.maKhuVuc_ID = maKhuVuc_ID;
	}
	public String getTenKhuVuc() {
		return tenKhuVuc;
	}
	public void setTenKhuVuc(String tenKhuVuc) {
		this.tenKhuVuc = tenKhuVuc;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	
	
	
}
