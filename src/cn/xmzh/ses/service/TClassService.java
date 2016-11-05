package cn.xmzh.ses.service;

import java.util.List;

import cn.xmzh.ses.pojo.TClass;

/**
 * 关于TClassService的业务
 * 
 * @author 李春
 * @time 2016年10月22日time下午4:02:28
 */
public interface TClassService {

	public void addTableData(TClass tClass) throws Exception;

	public void deleteByClassID(String classid) throws Exception;

	public void updateTableData(TClass tClass) throws Exception;

	public List<TClass> findAllClass() throws Exception;

	public TClass findByClassID(String classid) throws Exception;

	public List<TClass> findByTermID(Integer id) throws Exception;
}
