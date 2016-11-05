package cn.xmzh.ses.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.xmzh.ses.mapper.TeacherMapper;
import cn.xmzh.ses.pojo.Teacher;
import cn.xmzh.ses.service.TeacherService;

public class TeacherServiceImpl implements TeacherService {
	@Autowired
	private TeacherMapper teacherMapper;

	@Override
	public List<Teacher> findAll() throws Exception {
		return teacherMapper.findAll();
	}

	@Override
	public Teacher findTeacherById(String id) throws Exception {
		return teacherMapper.findTeacherById(id);
	}

	@Override
	public void addTeacher(Teacher teacher) throws Exception {
		teacherMapper.addTeacher(teacher);
	}

}
