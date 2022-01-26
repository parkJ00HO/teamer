package com.teamer.vo;

public class teamlistVO {

	private String t_name;
	private String t_domain;
	private String t_index;
	private String t_email;
	
	
	public teamlistVO(String t_name, String t_domain,String t_index) {
		this.t_name= t_name;
		this.t_domain = t_domain;
		this.t_index = t_index;
	}
	
	public teamlistVO(String t_name, String t_domain) {
		this.t_name = t_name; 
		this.t_domain = t_domain;
	}
	public teamlistVO(String t_name, String t_domain, String t_index, String t_email) {
		this.t_name = t_name;
		this.t_domain = t_domain;
		this.t_index = t_index;
		this.t_email = t_email;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public String getT_domain() {
		return t_domain;
	}
	public void setT_domain(String t_domain) {
		this.t_domain = t_domain;
	}
	public String getT_index() {
		return t_index;
	}
	public void setT_index(String t_index) {
		this.t_index = t_index;
	}
	public String getT_email() {
		return t_email;
	}
	public void setT_email(String t_email) {
		this.t_email = t_email;
	}
	
	
}