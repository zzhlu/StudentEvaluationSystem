package cn.xmzh.ses.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.xmzh.ses.mapper.TermMapper;
import cn.xmzh.ses.pojo.Term;
import cn.xmzh.ses.service.TermService;

public class TermServiceImpl implements TermService {

	@Autowired
	private TermMapper termMapper;

	@Override
	public List<Term> findAllTerm() throws Exception {
		return termMapper.findAllTerm();
	}

	@Override
	public Term findTermById(Integer id) throws Exception {
		// 返回查询结果
		if (id != null)
			return termMapper.findTermById(id);
		else
			return null;
	}

	@Override
	public Term findTermByXueQi(String xueqi) throws Exception {
		// 验证参数值
		if (xueqi != null)
			return termMapper.findTermByXueQi(xueqi);
		else
			return null;
	}

	@Override
	public void addTerm(Term term) throws Exception {
		// 需要的参数
		Term temp = null;
		// / 添加新的学期
		// 1. 首先需要查询是否已经存在该学期，如果不存在则执行2 ，否则返回
		if (term.getXueqi() != null)
			temp = termMapper.findTermByXueQi(term.getXueqi());
		if (temp != null)
			return;
		// 2. 如果没有的的话就查询参数是否符合要求，如果符合要求则执行3， 否则返回
		if (term.getXueqi() != null) {
			// 3.添加到数据库中
			term.setCreateTime(new Date());// 设置时间参数
			termMapper.addTerm(term);
		}

		// 返回
		return;
	}

}
