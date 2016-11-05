package cn.xmzh.ses.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.xmzh.ses.service.FileService;

/**
 * 和老师有关的系统设置链接
 * 
 * @author 李春
 * @time 2016年10月22日time下午5:17:20
 */
@Controller
public class TeacherLinkSystemSetting {
	@Autowired
	private FileService fileService;

	@RequestMapping("/fileManagerPage")
	public String fileManagerPage(HttpServletRequest request, Model model) {
		// 项目的路径
		String projPath = request.getSession().getServletContext()
				.getRealPath("/");
		// 项目中file文件夹的路径
		String dirPath = "WEB-INF" + File.separator + "file";
		File file = new File(projPath + dirPath);
		if (!file.exists())
			file.mkdirs();
		model.addAttribute("total", file.getTotalSpace() / 1024 / 1024);
		model.addAttribute("useable", file.getUsableSpace() / 1024 / 1024);
		model.addAttribute("fileNumb", fileService.getFilesNumb(file));
		return "teacher/fileManager";
	}

	@RequestMapping("/fileManager")
	public String fileManager() {
		return "teacher/fileManager";
	}

	@RequestMapping("/alarmManagerPage")
	public String alarmManagerPage() {
		return "teacher/alarmManager";
	}

	@RequestMapping("/alarmManager")
	public String alarmManager() {
		return "teacher/alarmManager";
	}

	@RequestMapping("/systemSettingPage")
	public String systemSettingPage() {
		return "teacher/systemSetting";
	}

	@RequestMapping("/systemSetting")
	public String systemSetting() {
		return "teacher/systemSetting";
	}

}
