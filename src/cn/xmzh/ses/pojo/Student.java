package cn.xmzh.ses.pojo;

public class Student {
	private String sno; // 学号
	private String classid;
	private String name;
	private String gender; // 性别
	private String dormno; // 寝室楼号
	private String dorminfo; // 寝室号及床号
	private String nation; // 民族
	private String politicalStatus; // 政治面貌
	private String phone; // 手机号
	private String haveLoan; // 是否生源地贷款
	private String havePovertyCertificate; // 是否有贫困证明
	private String idCard; // 身份证号
	private String bankCard; // 银行卡号
	private String address; // 家庭住址
	private String residenceRegistrationAddress; // 户口所在地派出所
	private String qqNumb;
	private String fatherName;
	private String fatherPhone;
	private String motherName;
	private String motherPhone;
	private String photoPath;
	private String password;

	public Student() {
	}

	public Student(String sno, String classid, String name, String gender,
			String dormno, String dorminfo, String nation,
			String politicalStatus, String phone, String haveLoan,
			String havePovertyCertificate, String idCard, String bankCard,
			String address, String residenceRegistrationAddress, String qqNumb,
			String fatherName, String fatherPhone, String motherName,
			String motherPhone, String photoPath, String password) {
		this.sno = sno;
		this.classid = classid;
		this.name = name;
		this.gender = gender;
		this.dormno = dormno;
		this.dorminfo = dorminfo;
		this.nation = nation;
		this.politicalStatus = politicalStatus;
		this.phone = phone;
		this.haveLoan = haveLoan;
		this.havePovertyCertificate = havePovertyCertificate;
		this.idCard = idCard;
		this.bankCard = bankCard;
		this.address = address;
		this.residenceRegistrationAddress = residenceRegistrationAddress;
		this.qqNumb = qqNumb;
		this.fatherName = fatherName;
		this.fatherPhone = fatherPhone;
		this.motherName = motherName;
		this.motherPhone = motherPhone;
		this.photoPath = photoPath;
		this.password = password;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getClassid() {
		return classid;
	}

	public void setClassid(String classid) {
		this.classid = classid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDormno() {
		return dormno;
	}

	public void setDormno(String dormno) {
		this.dormno = dormno;
	}

	public String getDorminfo() {
		return dorminfo;
	}

	public void setDorminfo(String dorminfo) {
		this.dorminfo = dorminfo;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getPoliticalStatus() {
		return politicalStatus;
	}

	public void setPoliticalStatus(String politicalStatus) {
		this.politicalStatus = politicalStatus;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getHaveLoan() {
		return haveLoan;
	}

	public void setHaveLoan(String haveLoan) {
		this.haveLoan = haveLoan;
	}

	public String getHavePovertyCertificate() {
		return havePovertyCertificate;
	}

	public void setHavePovertyCertificate(String havePovertyCertificate) {
		this.havePovertyCertificate = havePovertyCertificate;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getBankCard() {
		return bankCard;
	}

	public void setBankCard(String bankCard) {
		this.bankCard = bankCard;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getResidenceRegistrationAddress() {
		return residenceRegistrationAddress;
	}

	public void setResidenceRegistrationAddress(
			String residenceRegistrationAddress) {
		this.residenceRegistrationAddress = residenceRegistrationAddress;
	}

	public String getQqNumb() {
		return qqNumb;
	}

	public void setQqNumb(String qqNumb) {
		this.qqNumb = qqNumb;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getFatherPhone() {
		return fatherPhone;
	}

	public void setFatherPhone(String fatherPhone) {
		this.fatherPhone = fatherPhone;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getMotherPhone() {
		return motherPhone;
	}

	public void setMotherPhone(String motherPhone) {
		this.motherPhone = motherPhone;
	}

	public String getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Student [sno=" + sno + ", classid=" + classid + ", name="
				+ name + ", gender=" + gender + ", dormno=" + dormno
				+ ", dorminfo=" + dorminfo + ", nation=" + nation
				+ ", politicalStatus=" + politicalStatus + ", phone=" + phone
				+ ", haveLoan=" + haveLoan + ", havePovertyCertificate="
				+ havePovertyCertificate + ", idCard=" + idCard + ", bankCard="
				+ bankCard + ", address=" + address
				+ ", residenceRegistrationAddress="
				+ residenceRegistrationAddress + ", qqNumb=" + qqNumb
				+ ", fatherName=" + fatherName + ", fatherPhone=" + fatherPhone
				+ ", motherName=" + motherName + ", motherPhone=" + motherPhone
				+ "]";
	}

}
