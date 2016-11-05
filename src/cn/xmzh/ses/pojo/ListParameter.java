package cn.xmzh.ses.pojo;

import java.util.List;

/**
 * 当需要从网页接收List参数时需要该POJO来完成
 * 
 * @author 李春
 * @time 2016年11月4日time下午4:59:48
 */
public class ListParameter {
	/**
	 * 素质教育加分评分表
	 */
	private List<TableSuZhiJiaoYuJiaFenPingFen> tableSZJYJFPF;
	/**
	 * 素质教育加分申请表
	 */
	private List<TableSuZhiJiaoYuJiaFenShenQing> tableSZJYJFSQ;
	/**
	 * 素质学分日常行为部分
	 */
	private List<TableSuZhiXueFenRiChangXingWeiBuFenPingFen> tableSZXFRCXWBFPF;
	/**
	 * 综合测评成绩统计表
	 */
	private List<TableZongHeCePingChengJiTongJi> tableZHCPCJTJ;

	public List<TableSuZhiJiaoYuJiaFenPingFen> getTableSZJYJFPF() {
		return tableSZJYJFPF;
	}

	public void setTableSZJYJFPF(
			List<TableSuZhiJiaoYuJiaFenPingFen> tableSZJYJFPF) {
		this.tableSZJYJFPF = tableSZJYJFPF;
	}

	public List<TableSuZhiJiaoYuJiaFenShenQing> getTableSZJYJFSQ() {
		return tableSZJYJFSQ;
	}

	public void setTableSZJYJFSQ(
			List<TableSuZhiJiaoYuJiaFenShenQing> tableSZJYJFSQ) {
		this.tableSZJYJFSQ = tableSZJYJFSQ;
	}

	public List<TableSuZhiXueFenRiChangXingWeiBuFenPingFen> getTableSZXFRCXWBFPF() {
		return tableSZXFRCXWBFPF;
	}

	public void setTableSZXFRCXWBFPF(
			List<TableSuZhiXueFenRiChangXingWeiBuFenPingFen> tableSZXFRCXWBFPF) {
		this.tableSZXFRCXWBFPF = tableSZXFRCXWBFPF;
	}

	public List<TableZongHeCePingChengJiTongJi> getTableZHCPCJTJ() {
		return tableZHCPCJTJ;
	}

	public void setTableZHCPCJTJ(
			List<TableZongHeCePingChengJiTongJi> tableZHCPCJTJ) {
		this.tableZHCPCJTJ = tableZHCPCJTJ;
	}

}
