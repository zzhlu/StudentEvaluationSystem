package cn.xmzh.ses.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import cn.xmzh.ses.pojo.TableSuZhiJiaoYuJiaFenShenQing;
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

	@RequestMapping("/editProfilePage")
	public String editProfilePage() throws Exception {
		return "student/editProfile";
	}

	@RequestMapping("/editProfile")
	public String editProfile(HttpServletRequest request,
			TableSuZhiJiaoYuJiaFenShenQing table, MultipartFile file)
			throws Exception {
		System.out.println("程序运行到此处了！");
		// Student student = (Student)
		// request.getSession().getAttribute("user");
		System.out.println(tableSuZhiJiaoYuJiaFenShenQingService.findAll());
		table.setFilePath("/");
		System.out.println(table);
		System.out.println(file.getSize());
		return "student/editProfile";
	}
}
