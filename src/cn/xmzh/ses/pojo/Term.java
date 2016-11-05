package cn.xmzh.ses.pojo;

import java.util.Date;

/**
 * 统计的学期
 * 
 * @author 李春
 * @time 2016年10月22日time下午3:40:22
 */
public class Term {
	private Integer id;
	private Date createTime; // 该记录创建的时间
	private String xueqi; // 统计的学期

	public Term() {
	}

	public Term(Integer id, Date createTime, String xueqi) {
		super();
		this.id = id;
		this.createTime = createTime;
		this.xueqi = xueqi;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getXueqi() {
		return xueqi;
	}

	public void setXueqi(String xueqi) {
		this.xueqi = xueqi;
	}

	@Override
	public String toString() {
		return "Term [id=" + id + ", createTime=" + createTime + ", xueqi="
				+ xueqi + "]";
	}

}
