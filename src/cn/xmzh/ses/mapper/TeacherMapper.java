package cn.xmzh.ses.mapper;

import java.util.List;

import cn.xmzh.ses.pojo.Teacher;

/**
 * 老师用户的Mapper接口
 * 
 * @author 李春
 * @time 2016年10月25日time下午1:54:46
 */
public interface TeacherMapper {

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
