package cn.xmzh.ses.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.xmzh.ses.mapper.TableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper;
import cn.xmzh.ses.pojo.TableSuZhiXueFenRiChangXingWeiBuFenPingFen;
import cn.xmzh.ses.service.TableSuZhiXueFenRiChangXingWeiBuFenPingFenService;

/**
 * 
 * @author 李春
 * @time 2016年10月24日time下午4:08:40
 */
public class TableSuZhiXueFenRiChangXingWeiBuFenPingFenServiceImpl implements
		TableSuZhiXueFenRiChangXingWeiBuFenPingFenService {

	@Autowired
	private TableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper tableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper;

	@Override
	public void addToTable(TableSuZhiXueFenRiChangXingWeiBuFenPingFen record)
			throws Exception {
		tableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper.addToTable(record);
	}

	@Override
	public void deleteByID(Integer id) throws Exception {
		tableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper.deleteByID(id);
	}

	@Override
	public void updateTableByStudent(
			TableSuZhiXueFenRiChangXingWeiBuFenPingFen record) throws Exception {
		tableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper
				.updateTableByStudent(record);
	}

	@Override
	public void updateTableByTeacher(
			TableSuZhiXueFenRiChangXingWeiBuFenPingFen record) throws Exception {
		tableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper
				.updateTableByTeacher(record);

	}

	@Override
	public TableSuZhiXueFenRiChangXingWeiBuFenPingFen findByID(Integer id)
			throws Exception {
		return tableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper.findByID(id);
	}

	@Override
	public List<TableSuZhiXueFenRiChangXingWeiBuFenPingFen> findByZongHeTable(
			Integer id) throws Exception {
		return tableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper
				.findByZongHeTable(id);
	}

	@Override
	public List<TableSuZhiXueFenRiChangXingWeiBuFenPingFen> findAll()
			throws Exception {
		return tableSuZhiXueFenRiChangXingWeiBuFenPingFenMapper.findAll();
	}

}
