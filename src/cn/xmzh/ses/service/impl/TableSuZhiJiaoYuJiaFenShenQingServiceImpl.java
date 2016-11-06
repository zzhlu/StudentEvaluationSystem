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
	public void addToTable(TableSuZhiJiaoYuJiaFenShenQing record)
			throws Exception {
		tableSuZhiJiaoYuJiaFenShenQingMapper.addToTable(record);
	}

	@Override
	public void deleteByID(Integer id) throws Exception {
		tableSuZhiJiaoYuJiaFenShenQingMapper.deleteByID(id);
	}

	@Override
	public void updateTableData(TableSuZhiJiaoYuJiaFenShenQing record)
			throws Exception {
		tableSuZhiJiaoYuJiaFenShenQingMapper.updateTableData(record);
	}

	@Override
	public List<TableSuZhiJiaoYuJiaFenShenQing> findAll() throws Exception {
		return tableSuZhiJiaoYuJiaFenShenQingMapper.findAll();
	}

	@Override
	public List<TableSuZhiJiaoYuJiaFenShenQing> findBySno(String sno)
			throws Exception {
		return tableSuZhiJiaoYuJiaFenShenQingMapper.findBySno(sno);
	}

	@Override
	public List<TableSuZhiJiaoYuJiaFenShenQing> findBySnoAndXueQi(String sno)
			throws Exception {
		return tableSuZhiJiaoYuJiaFenShenQingMapper.findBySnoAndXueQi(sno);
	}

	@Override
	public TableSuZhiJiaoYuJiaFenShenQing findByID(Integer id) throws Exception {
		return tableSuZhiJiaoYuJiaFenShenQingMapper.findByID(id);
	}
}
