package cn.xmzh.ses.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xmzh.ses.pojo.Student;
import cn.xmzh.ses.pojo.Teacher;
import cn.xmzh.ses.service.StudentService;
import cn.xmzh.ses.service.TeacherService;

/**
 * 和老师有关的账户服务链接
 * 
 * @author 李春
 * @time 2016年10月22日time下午5:16:35
 */
@Controller
public class AccountAccessSafeControl {
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private StudentService studentService;

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "login";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request, String id, String password,
			String teacher) throws Exception {
		System.out.println("id=" + id + "  password=" + password
				+ "  isTeacher=" + teacher);
		// 如果包含教师属性则为教师登录，否则为学生登录
		if (teacher != null && "teacher".equals(teacher)) {
			// 针对教师的验证
			// 从数据中查询老师
			Teacher obj = teacherService.findTeacherById(id);
			System.out.println(obj);
			if (password != null && obj != null
					&& password.equals(obj.getPassword())) {
				// 验证通过
				request.getSession().setAttribute("user", obj);
				return "redirect:/index.action";
			}
		} else {
			// 针对学生的验证
			// 从数据中查询学生
			Student obj = studentService.findStudentBySno(id);
			if (password != null && obj != null
					&& password.equals(obj.getPassword())) {
				// 验证通过
				request.getSession().setAttribute("user", obj);
				return "redirect:/student/index.action";
			}
		}
		request.setAttribute("tip", "账户或者密码错误！");
		return "login";
	}
}
