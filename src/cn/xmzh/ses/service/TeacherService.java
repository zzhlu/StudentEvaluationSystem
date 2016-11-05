package cn.xmzh.ses.service;

import java.util.List;

import cn.xmzh.ses.pojo.Teacher;

/**
 * Teacher的业务类
 * 
 * @author 李春
 * @time 2016年10月22日time下午6:47:34
 */
public interface TeacherService {
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Teacher> findAll() throws Exception;

	/**
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Teacher findTeacherById(String id) throws Exception;

	/**
	 * 
	 * @param teacher
	 * @throws Exception
	 */
	public void addTeacher(Teacher teacher) throws Exception;
}
