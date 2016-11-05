package cn.xmzh.ses.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xmzh.ses.service.StudentService;
import cn.xmzh.ses.service.TClassService;

/**
 * 
 * @author 李春
 * @time 2016年10月23日time下午2:08:20
 */
@Controller
public class TeacherPageController {

	@Autowired
	private TClassService tClassService;

	@Autowired
	private StudentService studentService;

	@RequestMapping("/index")
	public String index(Model model) throws Exception {
		// 首页定制
		// System.out.println(termService.findAllTerm());
		// 查询所有学生人数
		model.addAttribute("studentNumb", studentService.findAllStudent()
				.size());
		// 查询班级数
		model.addAttribute("classNumb", tClassService.findAllClass().size());
		return "teacher/index";
	}

}
