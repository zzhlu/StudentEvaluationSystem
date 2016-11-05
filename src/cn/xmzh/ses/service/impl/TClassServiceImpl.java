package cn.xmzh.ses.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.xmzh.ses.mapper.TClassMapper;
import cn.xmzh.ses.pojo.TClass;
import cn.xmzh.ses.service.TClassService;

public class TClassServiceImpl implements TClassService {
	@Autowired
	private TClassMapper tClassMapper;

	@Override
	public void addTableData(TClass tClass) throws Exception {
		tClassMapper.addTableData(tClass);
	}

	@Override
	public void deleteByClassID(String classid) throws Exception {
		tClassMapper.deleteByClassID(classid);
	}

	@Override
	public void updateTableData(TClass tClass) throws Exception {
		tClassMapper.updateTableData(tClass);
	}

	@Override
	public List<TClass> findAllClass() throws Exception {
		return tClassMapper.findAllClass();
	}

	@Override
	public TClass findByClassID(String classid) throws Exception {
		return tClassMapper.findByClassID(classid);
	}

	@Override
	public List<TClass> findByTermID(Integer id) throws Exception {
		return tClassMapper.findByTermID(id);
	}

}
