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
public class StudentSettingController {
	@RequestMapping("/settingPage")
	public String settingPage() throws Exception {
		return "student/setting";
	}

}
