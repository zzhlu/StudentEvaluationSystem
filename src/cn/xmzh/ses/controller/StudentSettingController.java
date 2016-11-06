package cn.xmzh.ses.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xmzh.ses.pojo.Student;
import cn.xmzh.ses.service.StudentService;
import cn.xmzh.ses.service.TableSuZhiJiaoYuJiaFenShenQingService;

/**
 * 
 * @author 李春
 * @time 2016年10月23日time下午5:16:34
 */
@Controller
@RequestMapping("/student")
public class StudentSettingController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private TableSuZhiJiaoYuJiaFenShenQingService tableSuZhiJiaoYuJiaFenShenQingService;

	@RequestMapping("/settingPage")
	public String settingPage() throws Exception {
		return "student/setting";
	}

	@RequestMapping("/updateStudentInformation")
	public String updateStudentInformation(HttpServletRequest request,
			Model model, Student student) throws Exception {
		try {
			studentService.updateStudentBySno(student);
			request.getSession().setAttribute("user", student);
		} catch (Exception e) {
			model.addAttribute("tip", "信息修改失败！");
		}
		return "forward:settingPage.action";
	}

}
