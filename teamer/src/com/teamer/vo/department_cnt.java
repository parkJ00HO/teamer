package com.teamer.vo;

public class department_cnt {
	
	private String p_department;
	private int p_department_cnt;
	
	public department_cnt() {};	
	public department_cnt(String p_department, int p_department_cnt) {
		this.p_department = p_department;
		this.p_department_cnt = p_department_cnt;
	}
	public String getP_department() {
		return p_department;
	}
	public void setP_department(String p_department) {
		this.p_department = p_department;
	}
	public int getP_department_cnt() {
		return p_department_cnt;
	}
	public void setP_department_cnt(int p_department_cnt) {
		this.p_department_cnt = p_department_cnt;
	}
	
	
	
	
	
}
