package cn.xmzh.ses.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.xmzh.ses.mapper.StudentMapper;
import cn.xmzh.ses.pojo.Student;
import cn.xmzh.ses.service.StudentService;

/**
 * 
 * @author 李春
 * @time 2016年10月22日time下午6:48:33
 */
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentMapper studentMapper;

	@Override
	public List<Student> findAllStudent() throws Exception {
		return studentMapper.findAllStudent();
	}

	@Override
	public Student findStudentBySno(String sno) throws Exception {
		return studentMapper.findStudentBySno(sno);
	}

	@Override
	public void addStudent(Student student) throws Exception {
		studentMapper.addStudent(student);
	}

	@Override
	public void updateStudentBySno(Student student) throws Exception {
		studentMapper.updateStudentBySno(student);
	}

	@Override
	public void updateStudentPassword(Student student) throws Exception {

	}

	@Override
	public List<Student> findStudentByClassID(String classid) throws Exception {
		return studentMapper.findStudentByClassID(classid);
	}

}
