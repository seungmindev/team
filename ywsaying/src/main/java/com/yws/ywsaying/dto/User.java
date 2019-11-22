package com.yws.ywsaying.dto;

import java.util.Date;

public class User {
	private Long  user_idx;
	private String user_id;
	private String user_password;
	private String user_email;
	private String user_name;
	private int user_bir_yy;
	private int user_bir_mm;
	private int user_bir_dd;
	private String user_gender;
	private String user_nickname;
	private Date user_regtime;
	public Long getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(Long user_idx) {
		this.user_idx = user_idx;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_bir_yy() {
		return user_bir_yy;
	}
	public void setUser_bir_yy(int user_bir_yy) {
		this.user_bir_yy = user_bir_yy;
	}
	public int getUser_bir_mm() {
		return user_bir_mm;
	}
	public void setUser_bir_mm(int user_bir_mm) {
		this.user_bir_mm = user_bir_mm;
	}
	public int getUser_bir_dd() {
		return user_bir_dd;
	}
	public void setUser_bir_dd(int user_bir_dd) {
		this.user_bir_dd = user_bir_dd;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public Date getUser_regtime() {
		return user_regtime;
	}
	public void setUser_regtime(Date user_regtime) {
		this.user_regtime = user_regtime;
	}
	@Override
	public String toString() {
		return "User [user_idx=" + user_idx + ", user_id=" + user_id + ", user_password=" + user_password
				+ ", user_email=" + user_email + ", user_name=" + user_name + ", user_bir_yy=" + user_bir_yy
				+ ", user_bir_mm=" + user_bir_mm + ", user_bir_dd=" + user_bir_dd + ", user_gender=" + user_gender
				+ ", user_nickname=" + user_nickname + ", user_regtime=" + user_regtime + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
