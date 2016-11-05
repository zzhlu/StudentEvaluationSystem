package cn.xmzh.ses.service;

import java.util.List;

import cn.xmzh.ses.pojo.Term;

/**
 * 关于TermService的业务
 * 
 * @author 李春
 * @time 2016年10月22日time下午4:02:28
 */
public interface TermService {
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Term> findAllTerm() throws Exception;

	/**
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Term findTermById(Integer id) throws Exception;

	/**
	 * 
	 * @param xueqi
	 * @return
	 * @throws Exception
	 */
	public Term findTermByXueQi(String xueqi) throws Exception;

	/**
	 * 
	 * @param term
	 * @throws Exception
	 */
	public void addTerm(Term term) throws Exception;

}
