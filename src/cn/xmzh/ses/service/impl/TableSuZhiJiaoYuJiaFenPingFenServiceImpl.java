package cn.xmzh.ses.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.xmzh.ses.mapper.TableSuZhiJiaoYuJiaFenPingFenMapper;
import cn.xmzh.ses.pojo.TableSuZhiJiaoYuJiaFenPingFen;
import cn.xmzh.ses.service.TableSuZhiJiaoYuJiaFenPingFenService;

/**
 * 
 * @author 李春
 * @time 2016年10月24日time下午4:08:40
 */
public class TableSuZhiJiaoYuJiaFenPingFenServiceImpl implements
		TableSuZhiJiaoYuJiaFenPingFenService {

	@Autowired
	private TableSuZhiJiaoYuJiaFenPingFenMapper tableSuZhiJiaoYuJiaFenPingFenMapper;

	@Override
	public void addToTable(TableSuZhiJiaoYuJiaFenPingFen record)
			throws Exception {
		tableSuZhiJiaoYuJiaFenPingFenMapper.addToTable(record);
	}

	@Override
	public void deleteByID(Integer id) throws Exception {
		tableSuZhiJiaoYuJiaFenPingFenMapper.deleteByID(id);
	}

	@Override
	public void updateTableData(TableSuZhiJiaoYuJiaFenPingFen record)
			throws Exception {
		tableSuZhiJiaoYuJiaFenPingFenMapper.updateTableData(record);
	}

	@Override
	public TableSuZhiJiaoYuJiaFenPingFen findByID(Integer id) throws Exception {
		return tableSuZhiJiaoYuJiaFenPingFenMapper.findByID(id);
	}

	@Override
	public List<TableSuZhiJiaoYuJiaFenPingFen> findByZongHe(Integer id)
			throws Exception {
		return tableSuZhiJiaoYuJiaFenPingFenMapper.findByZongHe(id);
	}
}
