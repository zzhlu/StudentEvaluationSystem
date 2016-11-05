package cn.xmzh.ses.service;

import java.util.List;

import cn.xmzh.ses.pojo.TableSuZhiJiaoYuJiaFenShenQing;

/**
 * 
 * @author 李春
 * @time 2016年10月24日time下午4:07:54
 */
public interface TableSuZhiJiaoYuJiaFenShenQingService {

	public void addToTable(TableSuZhiJiaoYuJiaFenShenQing table)
			throws Exception;

	public List<TableSuZhiJiaoYuJiaFenShenQing> findAll() throws Exception;

	public List<TableSuZhiJiaoYuJiaFenShenQing> findBySno(String sno)
			throws Exception;
}
