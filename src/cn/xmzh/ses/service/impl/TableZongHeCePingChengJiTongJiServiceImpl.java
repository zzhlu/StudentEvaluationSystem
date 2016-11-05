package cn.xmzh.ses.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.xmzh.ses.mapper.TableZongHeCePingChengJiTongJiMapper;
import cn.xmzh.ses.pojo.TableZongHeCePingChengJiTongJi;
import cn.xmzh.ses.service.TableZongHeCePingChengJiTongJiService;

/**
 * 
 * @author 李春
 * @time 2016年10月24日time下午4:08:40
 */
public class TableZongHeCePingChengJiTongJiServiceImpl implements
		TableZongHeCePingChengJiTongJiService {
	@Autowired
	private TableZongHeCePingChengJiTongJiMapper tableZongHeCePingChengJiTongJiMapper;

	@Override
	public void addTable(TableZongHeCePingChengJiTongJi table) throws Exception {
		tableZongHeCePingChengJiTongJiMapper.addTable(table);
	}

	@Override
	public void updateAlterTableData(TableZongHeCePingChengJiTongJi table)
			throws Exception {
		tableZongHeCePingChengJiTongJiMapper.updateAlterTableData(table);
	}

	@Override
	public void updateSetTableValid(TableZongHeCePingChengJiTongJi record)
			throws Exception {
		tableZongHeCePingChengJiTongJiMapper.updateSetTableValid(record);
	}

	@Override
	public void deleteTable(Integer id) throws Exception {
		tableZongHeCePingChengJiTongJiMapper.deleteTable(id);
	}

	@Override
	public TableZongHeCePingChengJiTongJi findTableByID(Integer id)
			throws Exception {
		return tableZongHeCePingChengJiTongJiMapper.findTableByID(id);
	}

	@Override
	public List<TableZongHeCePingChengJiTongJi> findTableBySNO(String sno)
			throws Exception {
		return tableZongHeCePingChengJiTongJiMapper.findTableBySNO(sno);
	}

	@Override
	public TableZongHeCePingChengJiTongJi findTableBySNOAndXUEQI(
			TableZongHeCePingChengJiTongJi record) throws Exception {
		return tableZongHeCePingChengJiTongJiMapper
				.findTableBySNOAndXUEQI(record);
	}

	@Override
	public List<TableZongHeCePingChengJiTongJi> findTableByClassIDAndXUEQI(
			TableZongHeCePingChengJiTongJi record) throws Exception {
		return tableZongHeCePingChengJiTongJiMapper
				.findTableByClassIDAndXUEQI(record);
	}

	@Override
	public List<TableZongHeCePingChengJiTongJi> findTableByClassIDAndXUEQIDESC(
			TableZongHeCePingChengJiTongJi record) throws Exception {
		return tableZongHeCePingChengJiTongJiMapper
				.findTableByClassIDAndXUEQIDESC(record);
	}

}
