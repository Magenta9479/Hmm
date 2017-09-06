package com.kh.hmm.member.model.vo;

import java.sql.Date;

public class Member {
	private int membercode;
	private String id;
	private String password;
	private String nickname;
	private String email;
	private String photo;
	private int medal;
	private int exp;
	private int chash;
	private int ddaru;
	private String job;
	private Date enrolldate;
	private Date quitedate;

	public Member() {
	}

	@Override
	public String toString() {
		return "Member [membercode=" + membercode + ", id=" + id + ", password=" + password + ", nickname=" + nickname
				+ ", email=" + email + ", photo=" + photo + ", medal=" + medal + ", exp=" + exp + ", chash=" + chash
				+ ", ddaru=" + ddaru + ", job=" + job + ", enrolldate=" + enrolldate + ", quitedate=" + quitedate + "]";
	}

	public Member(int membercode, String id, String password, String nickname, String email, String photo, int medal,
			int exp, int chash, int ddaru, String job, Date enrolldate, Date quitedate) {
		super();
		this.membercode = membercode;
		this.id = id;
		this.password = password;
		this.nickname = nickname;
		this.email = email;
		this.photo = photo;
		this.medal = medal;
		this.exp = exp;
		this.chash = chash;
		this.ddaru = ddaru;
		this.job = job;
		this.enrolldate = enrolldate;
		this.quitedate = quitedate;
	}

	public int getMembercode() {
		return membercode;
	}

	public void setMembercode(int membercode) {
		this.membercode = membercode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public int getMedal() {
		return medal;
	}

	public void setMedal(int medal) {
		this.medal = medal;
	}

	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public int getChash() {
		return chash;
	}

	public void setChash(int chash) {
		this.chash = chash;
	}

	public int getDdaru() {
		return ddaru;
	}

	public void setDdaru(int ddaru) {
		this.ddaru = ddaru;
	}

	public Date getEnrolldate() {
		return enrolldate;
	}

	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}

	public Date getQuitedate() {
		return quitedate;
	}

	public void setQuitedate(Date quitedate) {
		this.quitedate = quitedate;
	}

}
