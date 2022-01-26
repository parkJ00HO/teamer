package com.teamer.vo;

public class messageVO {
	String m_content;
	String m_w_email; 
	String m_date;
	String m_time;
	int m_notify;
	String m_id;
	int m_mentionkey; 
	String m_filekey;
	String m_t_id;
	
	public messageVO() {}
	
	public messageVO(String m_content, String m_w_email, String m_date, String m_time, int m_notify, String m_id,
			int m_mentionkey, String m_filekey, String m_t_id) {
		super();
		this.m_content = m_content;
		this.m_w_email = m_w_email;
		this.m_date = m_date;
		this.m_time = m_time;
		this.m_notify = m_notify;
		this.m_id = m_id;
		this.m_mentionkey = m_mentionkey;
		this.m_filekey = m_filekey;
		this.m_t_id = m_t_id;
	}

	public String getM_content() {
		return m_content;
	}

	public void setM_content(String m_content) {
		this.m_content = m_content;
	}

	public String getM_w_email() {
		return m_w_email;
	}

	public void setM_w_email(String m_w_email) {
		this.m_w_email = m_w_email;
	}

	public String getM_date() {
		return m_date;
	}

	public void setM_date(String m_date) {
		this.m_date = m_date;
	}

	public String getM_time() {
		return m_time;
	}

	public void setM_time(String m_time) {
		this.m_time = m_time;
	}

	public int getM_notify() {
		return m_notify;
	}

	public void setM_notify(int m_notify) {
		this.m_notify = m_notify;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getM_mentionkey() {
		return m_mentionkey;
	}

	public void setM_mentionkey(int m_mentionkey) {
		this.m_mentionkey = m_mentionkey;
	}

	public String getM_filekey() {
		return m_filekey;
	}

	public void setM_filekey(String m_filekey) {
		this.m_filekey = m_filekey;
	}

	public String getM_t_id() {
		return m_t_id;
	}

	public void setM_t_id(String m_t_id) {
		this.m_t_id = m_t_id;
	}

	@Override
	public String toString() {
		return "messageVO°´Ã¼ [" + m_content + ", " + m_w_email + ", " + m_date + ", " + m_time + ", " + m_notify + ", " + m_id + ", " + m_mentionkey
				+ ", " + m_filekey + ", " + m_t_id + "]";
	}
	
	
	
}
