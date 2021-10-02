package com.member;		//eclipse로 실행할 때 제가 임의로 등록한 폴더 명입니다 원하시는대로 바꿔주세요
import java.util.Date;

public class MemberVO {
	private String id;    	//아이디
	private String pwd;	//비밀번호
	private String name;	//이름
	private String p_num;	//전화번호
	private String email; 	//이메일
	private String gender;	//성별
	private Date joinDate;	//가입날짜
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getP_num() {
		return p_num;
	}
	public void setP_num(String p_num) {
		this.p_num = p_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
}
