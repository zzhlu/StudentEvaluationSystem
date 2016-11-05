package cn.xmzh.ses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author 李春
 * @time 2016年10月23日time下午5:16:34
 */
@Controller
@RequestMapping("/student")
public class StudentScoreController {
	@RequestMapping("/scoreMaintainPage")
	public String scoreMaintainPage() throws Exception {
		return "student/scoreMaintain";
	}

	@RequestMapping("/scoreMaintain")
	public String scoreMaintain() throws Exception {
		return "student/scoreMaintain";
	}
}
