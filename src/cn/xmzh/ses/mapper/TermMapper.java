package cn.xmzh.ses.mapper;

import java.util.List;

import cn.xmzh.ses.pojo.Term;

/**
 * 
 * @author 李春
 * @time 2016年10月21日time下午8:35:18
 */
public interface TermMapper {
	/**
	 * 查询所有的学期
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Term> findAllTerm() throws Exception;

	/**
	 * 根据ID查询学期
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Term findTermById(Integer id) throws Exception;

	/**
	 * 根据学期查询学期
	 * 
	 * @param xueqi
	 * @return
	 * @throws Exception
	 */
	public Term findTermByXueQi(String xueqi) throws Exception;

	/**
	 * 添加新的学期
	 * 
	 * @param term
	 * @throws Exception
	 */
	public void addTerm(Term term) throws Exception;
}
