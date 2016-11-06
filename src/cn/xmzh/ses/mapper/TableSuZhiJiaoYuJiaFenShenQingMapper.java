package cn.xmzh.ses.mapper;

import java.util.List;

import cn.xmzh.ses.pojo.TableSuZhiJiaoYuJiaFenShenQing;

/**
 * 素质教育加分申请表
 * 
 * @author 李春
 * @time 2016年10月23日time上午11:24:15
 */
public interface TableSuZhiJiaoYuJiaFenShenQingMapper {
	/**
	 * 添加加分申请
	 * 
	 * @param table
	 * @throws Exception
	 */
	public void addToTable(TableSuZhiJiaoYuJiaFenShenQing record)
			throws Exception;

	/**
	 * 根据ID删除记录
	 * 
	 * @param id
	 * @throws Exception
	 */
	public void deleteByID(Integer id) throws Exception;

	/**
	 * 跟新记录中的数据
	 * 
	 * @param record
	 * @throws Exception
	 */
	public void updateTableData(TableSuZhiJiaoYuJiaFenShenQing record)
			throws Exception;

	/**
	 * 查询所有的加分申请表
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<TableSuZhiJiaoYuJiaFenShenQing> findAll() throws Exception;

	/**
	 * 根据ID查询其中某一条记录
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public TableSuZhiJiaoYuJiaFenShenQing findByID(Integer id) throws Exception;

	/**
	 * 根据学生的学号查询其所有的加分项
	 * 
	 * @param sno
	 * @return
	 * @throws Exception
	 */
	public List<TableSuZhiJiaoYuJiaFenShenQing> findBySno(String sno)
			throws Exception;

	/**
	 * 根据学生的学号和学期查询其所有的加分项
	 * 
	 * @param sno
	 * @return
	 * @throws Exception
	 */
	public List<TableSuZhiJiaoYuJiaFenShenQing> findBySnoAndXueQi(String sno)
			throws Exception;

}
