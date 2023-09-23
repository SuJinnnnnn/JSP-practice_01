package model;

public class LoginBean {
	//멤버 변수
	private String userid;
	private String userpassword;
	private String useremail;
	
	
	//디비에 저장되어 있는 값으로 가정(실제로는 데베 데이터값을 가져와서 비교해야함)
	String db_userid = "hong";
	String db_password = "1111";
	String db_email = "sujin@naver.com";
	
	//멤버 메소드 
	public boolean checkUser() {
		if(db_userid.equals(userid) &&
				db_email.equals(useremail) &&
				db_password.equals(userpassword)) {
			return true;
		}
		else {
			return false;
		}
	}
	
	//멤버 메소드 (마우스 오른쪽 -> 소스 -> Generate Getters and Setters)
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

}
