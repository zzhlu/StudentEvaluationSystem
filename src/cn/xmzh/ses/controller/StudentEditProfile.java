package cn.xmzh.ses.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xmzh.ses.service.TableSuZhiJiaoYuJiaFenShenQingService;

/**
 * 
 * @author 李春
 * @time 2016年10月23日time下午5:16:34
 */
@Controller
@RequestMapping("/student")
public class StudentEditProfile {

	@Autowired
	private TableSuZhiJiaoYuJiaFenShenQingService tableSuZhiJiaoYuJiaFenShenQingService;

}
