package cn.xmzh.ses.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.xmzh.ses.mapper.TableSuZhiJiaoYuJiaFenShenQingMapper;
import cn.xmzh.ses.pojo.TableSuZhiJiaoYuJiaFenShenQing;
import cn.xmzh.ses.service.TableSuZhiJiaoYuJiaFenShenQingService;

/**
 * 
 * @author 李春
 * @time 2016年10月24日time下午4:08:40
 */
public class TableSuZhiJiaoYuJiaFenShenQingServiceImpl implements
		TableSuZhiJiaoYuJiaFenShenQingService {

	@Autowired
	private TableSuZhiJiaoYuJiaFenShenQingMapper tableSuZhiJiaoYuJiaFenShenQingMapper;

	@Override
	public void addToTable(TableSuZhiJiaoYuJiaFenShenQing table)
			throws Exception {
	}

	@Override
	public List<TableSuZhiJiaoYuJiaFenShenQing> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TableSuZhiJiaoYuJiaFenShenQing> findBySno(String sno)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


}
