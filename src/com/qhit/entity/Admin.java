package com.qhit.entity;

public class Admin {

	private int aid;
	private String aLoginName;
	private String aPassWord;
	private String aTrueName;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getaLoginName() {
		return aLoginName;
	}
	public void setaLoginName(String aLoginName) {
		this.aLoginName = aLoginName;
	}
	public String getaPassWord() {
		return aPassWord;
	}
	public void setaPassWord(String aPassWord) {
		this.aPassWord = aPassWord;
	}
	public String getaTrueName() {
		return aTrueName;
	}
	public void setaTrueName(String aTrueName) {
		this.aTrueName = aTrueName;
	}
	public Admin(int aid, String aLoginName, String aPassWord, String aTrueName) {
		super();
		this.aid = aid;
		this.aLoginName = aLoginName;
		this.aPassWord = aPassWord;
		this.aTrueName = aTrueName;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aLoginName=" + aLoginName + ", aPassWord=" + aPassWord + ", aTrueName="
				+ aTrueName + "]";
	}
	public Admin() {
		super();
	}
	
	
}
