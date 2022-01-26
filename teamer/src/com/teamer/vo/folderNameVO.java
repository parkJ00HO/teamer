package com.teamer.vo;

public class folderNameVO {

	private String f_name;
	private String f_index;

	public folderNameVO(String f_name,String f_index) {
		this.f_name = f_name;
		this.f_index = f_index;
	}
	public folderNameVO(String f_name) {
	      this.f_name = f_name;
	   }
	
	public String getF_index() {
		return f_index;
	}

	public void setF_index(String f_index) {
		this.f_index = f_index;
	}


	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	
	
}
