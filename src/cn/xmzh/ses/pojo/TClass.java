package cn.xmzh.ses.pojo;

/**
 * 班级
 * 
 * @author 李春
 * @time 2016年10月28日time下午10:43:11
 */
public class TClass {

	private String classid;
	private String major;
	private String xueyuan;

	public TClass() {
	}

	public TClass(String classid, String major, String xueyuan) {
		this.classid = classid;
		this.major = major;
		this.xueyuan = xueyuan;
	}

	public String getClassid() {
		return classid;
	}

	public void setClassid(String classid) {
		this.classid = classid;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getXueyuan() {
		return xueyuan;
	}

	public void setXueyuan(String xueyuan) {
		this.xueyuan = xueyuan;
	}

	@Override
	public String toString() {
		return "TClass [classid=" + classid + ", major=" + major + ", xueyuan="
				+ xueyuan + "]";
	}

}
