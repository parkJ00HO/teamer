package com.teamer.vo;

public class topicName {
	private String t_id;
	private String t_name;
	private String t_public;
	private String t_member;
	private String t_bookmark;
	private String t_team_index;
	
	public topicName(String t_name,String t_public, String t_id) {
		this.t_name = t_name;
		this.t_public = t_public;
		this.t_id = t_id;
	}
	public topicName(String t_name, String t_member) {
		this.t_name=t_name;
		this.t_member=t_member;
	}
	
	public topicName(String t_id, String t_name, String t_public, String t_member, String t_bookmark,
			String t_team_index) {
		this.t_id = t_id;
		this.t_name = t_name;
		this.t_public = t_public;
		this.t_member = t_member;
		this.t_bookmark = t_bookmark;
		this.t_team_index = t_team_index;
	}
	public String getT_id() {
		return t_id;
	}
	public void setT_id(String t_id) {
		this.t_id = t_id;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public String getT_public() {
		return t_public;
	}
	public void setT_public(String t_public) {
		this.t_public = t_public;
	}
	public String getT_member() {
		return t_member;
	}
	public void setT_member(String t_member) {
		this.t_member = t_member;
	}
	public String getT_bookmark() {
		return t_bookmark;
	}
	public void setT_bookmark(String t_bookmark) {
		this.t_bookmark = t_bookmark;
	}
	public String getT_team_index() {
		return t_team_index;
	}
	public void setT_team_index(String t_team_index) {
		this.t_team_index = t_team_index;
	}

}
