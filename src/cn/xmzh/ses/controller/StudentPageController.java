package cn.xmzh.ses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author 李春
 * @time 2016年10月23日time下午2:08:11
 */
@Controller
@RequestMapping("/student")
public class StudentPageController {

	@RequestMapping("/index")
	public String index() throws Exception {
		// 首页定制
		// System.out.println(termService.findAllTerm());
		return "student/index";
	}

}
