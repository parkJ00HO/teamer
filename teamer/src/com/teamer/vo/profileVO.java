package com.teamer.vo;

public class profileVO {
	String p_state;
	String p_statemessage;
	String p_department; 
	String p_position;
	String p_phone; 
	String p_email;
	String p_absence;
	String p_image; 
	String p_t_index; 
	String p_pronounce; 
	String p_birth;
	String mem_name;
	
	
	public profileVO(){}
	
	public profileVO(String mem_name, String p_department, String p_position, String p_image, String p_email) {
		this.mem_name = mem_name; 
		this.p_department = p_department;
		this.p_position = p_position;
		this.p_image = p_image;
		this.p_email = p_email;
	}

	public profileVO(String p_pronounce, String p_state, String p_statemessage, String p_department, String p_position, String p_birth, String p_phone,
			String p_email, String p_absence, String p_image, String p_t_index) {
		this.p_pronounce = p_pronounce;
		this.p_state = p_state;
		this.p_statemessage = p_statemessage;
		this.p_department = p_department;
		this.p_position = p_position;
		this.p_birth = p_birth;
		this.p_phone = p_phone;
		this.p_email = p_email;
		this.p_absence = p_absence;
		this.p_image = p_image;
		this.p_t_index = p_t_index;
	}

	
	public String getP_state() {
		return p_state;
	}

	public void setP_state(String p_state) {
		this.p_state = p_state;
	}

	public String getP_statemessage() {
		return p_statemessage;
	}

	public void setP_statemessage(String p_statemessage) {
		this.p_statemessage = p_statemessage;
	}

	public String getP_department() {
		return p_department;
	}

	public void setP_department(String p_department) {
		this.p_department = p_department;
	}

	public String getP_position() {
		return p_position;
	}

	public void setP_position(String p_position) {
		this.p_position = p_position;
	}

	public String getP_phone() {
		return p_phone;
	}

	public void setP_phone(String p_phone) {
		this.p_phone = p_phone;
	}

	public String getP_email() {
		return p_email;
	}

	public void setP_email(String p_email) {
		this.p_email = p_email;
	}

	public String getP_absence() {
		return p_absence;
	}

	public void setP_absence(String p_absence) {
		this.p_absence = p_absence;
	}

	public String getP_image() {
		return p_image;
	}

	public void setP_image(String p_image) {
		this.p_image = p_image;
	}

	public String getP_t_index() {
		return p_t_index;
	}

	public void setP_t_index(String p_t_index) {
		this.p_t_index = p_t_index;
	}

	public String getP_pronounce() {
		return p_pronounce;
	}

	public void setP_pronounce(String p_pronounce) {
		this.p_pronounce = p_pronounce;
	}

	public String getP_birth() {
		return p_birth;
	}

	public void setP_birth(String p_birth) {
		this.p_birth = p_birth;
	}
	
	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name (String mem_name) {
		this.mem_name = mem_name;
	}
	
	
}
