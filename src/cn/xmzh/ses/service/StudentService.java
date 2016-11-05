package cn.xmzh.ses.service;

import java.util.List;

import cn.xmzh.ses.pojo.Student;

/**
 * 
 * @author 李春
 * @time 2016年10月22日time下午6:47:34
 */
public interface StudentService {
	/**
	 * 查询所有学生
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Student> findAllStudent() throws Exception;

	/**
	 * 根据班级查询所有学生
	 * 
	 * @param classid
	 * @return
	 * @throws Exception
	 */
	public List<Student> findStudentByClassID(String classid) throws Exception;

	/**
	 * 根据学号查询所有学生
	 * 
	 * @param sno
	 * @return
	 * @throws Exception
	 */
	public Student findStudentBySno(String sno) throws Exception;

	/**
	 * 添加学生
	 * 
	 * @param student
	 * @throws Exception
	 */
	public void addStudent(Student student) throws Exception;

	/**
	 * 更改学生信息
	 * 
	 * @param student
	 * @throws Exception
	 */
	public void updateStudentBySno(Student student) throws Exception;

	/**
	 * 更改学生密码
	 * 
	 * @param student
	 * @throws Exception
	 */
	public void updateStudentPassword(Student student) throws Exception;
}
