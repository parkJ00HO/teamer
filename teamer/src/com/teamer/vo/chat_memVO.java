package com.teamer.vo;

public class chat_memVO {
   private String p_image;
   private String mem_name;
   private String p_position;
   private String p_department;
   private String mem_email; 
   
   public String getP_image() {
      return p_image;
   }
   public void setP_image(String p_image) {
      this.p_image = p_image;
   }
   public String getMem_name() {
      return mem_name;
   }
   public void setMem_name(String mem_name) {
      this.mem_name = mem_name;
   }
   public String getP_position() {
      return p_position;
   }
   public void setP_position(String p_position) {
      this.p_position = p_position;
   }
   public String getP_department() {
      return p_department;
   }
   public void setP_department(String p_department) {
      this.p_department = p_department;
   }
   
   
     public String getMem_email() { return mem_email; } public void
     setMem_email(String mem_email) { this.mem_email = mem_email; }
    
   public chat_memVO(String mem_email ,String p_image, String mem_name, String p_position, String p_department) {
      super();
      this.p_image = p_image;
      this.mem_name = mem_name;
      this.p_position = p_position;
      this.p_department = p_department;
      this.mem_email=mem_email; 
   }
   
   
}