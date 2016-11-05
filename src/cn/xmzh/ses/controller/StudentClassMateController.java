package cn.xmzh.ses.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xmzh.ses.pojo.Student;
import cn.xmzh.ses.service.StudentService;

/**
 * 
 * @author 李春
 * @time 2016年10月23日time下午5:16:34
 */
@Controller
@RequestMapping("/student")
public class StudentClassMateController {
	@Autowired
	private StudentService studentService;

	@RequestMapping("/classMatePage")
	public String classMatePage(Model model) throws Exception {
		// 根据当前学生的学号查询同班学生的信息
		List<Student> list = studentService.findAllStudent();
		model.addAttribute("classMate", list);
		return "student/classMate";
	}

	@RequestMapping("/classMate")
	public String classMate() {
		return "student/classMate";
	}
}
