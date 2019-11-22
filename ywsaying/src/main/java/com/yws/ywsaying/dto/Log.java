package com.yws.ywsaying.dto;

import java.util.Date;

public class Log {
	private Long log_idx;
	private String log_ip;
	private String log_method;
	private Date log_regtime;
	public Long getLog_idx() {
		return log_idx;
	}
	public void setLog_idx(Long log_idx) {
		this.log_idx = log_idx;
	}
	public String getLog_ip() {
		return log_ip;
	}
	public void setLog_ip(String log_ip) {
		this.log_ip = log_ip;
	}
	public String getLog_method() {
		return log_method;
	}
	public void setLog_method(String log_method) {
		this.log_method = log_method;
	}
	public Date getLog_regtime() {
		return log_regtime;
	}
	public void setLog_regtime(Date log_regtime) {
		this.log_regtime = log_regtime;
	}
	@Override
	public String toString() {
		return "Log [log_idx=" + log_idx + ", log_ip=" + log_ip + ", log_method=" + log_method + ", log_regtime="
				+ log_regtime + "]";
	}
	
	
	
	
	
	
	
	
}
