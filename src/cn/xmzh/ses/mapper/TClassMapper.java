package cn.xmzh.ses.mapper;

import java.util.List;

import cn.xmzh.ses.pojo.TClass;

/**
 * 班级表
 * 
 * @author 李春
 * @time 2016年10月21日time下午8:35:18
 */
public interface TClassMapper {

	public void addTableData(TClass tClass) throws Exception;

	public void deleteByClassID(String classid) throws Exception;

	public void updateTableData(TClass tClass) throws Exception;

	public List<TClass> findAllClass() throws Exception;

	public TClass findByClassID(String classid) throws Exception;

	public List<TClass> findByTermID(Integer id) throws Exception;
}
