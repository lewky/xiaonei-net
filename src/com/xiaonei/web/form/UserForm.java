package com.xiaonei.web.form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

//用户表单
public class UserForm extends ActionForm {

	private String id;
	private String techschool;
	private String junior;
	private String province;
	private String city;
	private String primaryschool;
	private String email;
	private String name;
	private String pwd;
	private String photo;
	private String sex;
	private String birth;
	private String tel;
	private String mobile;
	private String oicq;
	private String msn;
	private String website;
	private String techSchYear;
	private String juniorYear;
	private String primaryYear;
	private String interest;
	private String music;
	private String movie;
	private String game;
	private String cartoon;
	private String sport;
	private String book;
	private String assn;
	private String visited;
	private String doing;
	private String online;
	private String registerDate;
	private String loginDate;
	private String level;
	private String locked;

	// 增加一个接收大学id的字段
	private String universityId;
	// 增加一个用户类型字段
	private String userType;
	//增加一个接收上传头像的字段(表单文件)
	private FormFile myPhoto;

	public FormFile getMyPhoto() {
		return myPhoto;
	}

	public void setMyPhoto(FormFile myPhoto) {
		this.myPhoto = myPhoto;
	}

	public String getUniversityId() {
		return universityId;
	}

	public void setUniversityId(String universityId) {
		this.universityId = universityId;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTechschool() {
		return techschool;
	}

	public void setTechschool(String techschool) {
		this.techschool = techschool;
	}

	public String getJunior() {
		return junior;
	}

	public void setJunior(String junior) {
		this.junior = junior;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPrimaryschool() {
		return primaryschool;
	}

	public void setPrimaryschool(String primaryschool) {
		this.primaryschool = primaryschool;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getOicq() {
		return oicq;
	}

	public void setOicq(String oicq) {
		this.oicq = oicq;
	}

	public String getMsn() {
		return msn;
	}

	public void setMsn(String msn) {
		this.msn = msn;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getTechSchYear() {
		return techSchYear;
	}

	public void setTechSchYear(String techSchYear) {
		this.techSchYear = techSchYear;
	}

	public String getJuniorYear() {
		return juniorYear;
	}

	public void setJuniorYear(String juniorYear) {
		this.juniorYear = juniorYear;
	}

	public String getPrimaryYear() {
		return primaryYear;
	}

	public void setPrimaryYear(String primaryYear) {
		this.primaryYear = primaryYear;
	}

	public String getInterest() {
		return interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	public String getMusic() {
		return music;
	}

	public void setMusic(String music) {
		this.music = music;
	}

	public String getMovie() {
		return movie;
	}

	public void setMovie(String movie) {
		this.movie = movie;
	}

	public String getGame() {
		return game;
	}

	public void setGame(String game) {
		this.game = game;
	}

	public String getCartoon() {
		return cartoon;
	}

	public void setCartoon(String cartoon) {
		this.cartoon = cartoon;
	}

	public String getSport() {
		return sport;
	}

	public void setSport(String sport) {
		this.sport = sport;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public String getAssn() {
		return assn;
	}

	public void setAssn(String assn) {
		this.assn = assn;
	}

	public String getVisited() {
		return visited;
	}

	public void setVisited(String visited) {
		this.visited = visited;
	}

	public String getDoing() {
		return doing;
	}

	public void setDoing(String doing) {
		this.doing = doing;
	}

	public String getOnline() {
		return online;
	}

	public void setOnline(String online) {
		this.online = online;
	}

	public String getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}

	public String getLoginDate() {
		return loginDate;
	}

	public void setLoginDate(String loginDate) {
		this.loginDate = loginDate;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getLocked() {
		return locked;
	}

	public void setLocked(String locked) {
		this.locked = locked;
	}
}
