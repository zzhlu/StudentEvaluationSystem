package cn.xmzh.ses.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import cn.xmzh.ses.pojo.Student;
import cn.xmzh.ses.pojo.TableSuZhiJiaoYuJiaFenPingFen;
import cn.xmzh.ses.pojo.TableSuZhiJiaoYuJiaFenShenQing;
import cn.xmzh.ses.pojo.TableZongHeCePingChengJiTongJi;
import cn.xmzh.ses.pojo.Term;
import cn.xmzh.ses.service.StudentService;
import cn.xmzh.ses.service.TClassService;
import cn.xmzh.ses.service.TableSuZhiJiaoYuJiaFenPingFenService;
import cn.xmzh.ses.service.TableSuZhiJiaoYuJiaFenShenQingService;
import cn.xmzh.ses.service.TableSuZhiXueFenRiChangXingWeiBuFenPingFenService;
import cn.xmzh.ses.service.TableZongHeCePingChengJiTongJiService;
import cn.xmzh.ses.service.TermService;

/**
 * 
 * @author 李春
 * @time 2016年10月23日time下午5:16:34
 */
@Controller
@RequestMapping("/student")
public class StudentScoreController {
	@Autowired
	private TermService termService;
	@Autowired
	private TClassService tClassService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private TableSuZhiJiaoYuJiaFenShenQingService tableSuZhiJiaoYuJiaFenShenQingService;
	@Autowired
	private TableZongHeCePingChengJiTongJiService tableZongHeCePingChengJiTongJiService;
	@Autowired
	private TableSuZhiJiaoYuJiaFenPingFenService tableSuZhiJiaoYuJiaFenPingFenService;
	@Autowired
	private TableSuZhiXueFenRiChangXingWeiBuFenPingFenService tableSuZhiXueFenRiChangXingWeiBuFenPingFenService;

	@RequestMapping("/scoreMaintainPage")
	public String scoreMaintainPage(HttpServletRequest request, Model model)
			throws Exception {
		Student student = (Student) request.getSession().getAttribute("user");
		model.addAttribute("list", tableSuZhiJiaoYuJiaFenShenQingService
				.findBySno(student.getSno()));
		return "student/scoreMaintain";
	}

	@RequestMapping("/scoreMaintain")
	public String scoreMaintain() throws Exception {
		return "student/scoreMaintain";
	}

	@RequestMapping("/editScoreApplyPage")
	public String editProfilePage(Model model) throws Exception {
		List<Term> termList = termService.findAllTerm();
		model.addAttribute("termList", termList);
		return "student/editScoreApply";
	}

	@RequestMapping("/editScoreApply")
	public String editProfile(Model model, HttpServletRequest request,
			TableSuZhiJiaoYuJiaFenShenQing record, MultipartFile file)
			throws Exception {
		try {
			Student student = (Student) request.getSession().getAttribute(
					"user");
			if (student == null || student.getSno() == null)
				throw new Exception("系统账户登录出现异常，可能遭遇攻击！");
			String sno = student.getSno();
			String xueqi = record.getTime();
			Term term = termService.findTermByXueQi(xueqi);
			if (term == null)
				throw new Exception("用户输入的时间有误，与学期不契合！");
			TableZongHeCePingChengJiTongJi tj = new TableZongHeCePingChengJiTongJi();
			tj.setSno(sno);
			tj.setXueqi(term.getId());
			tj = tableZongHeCePingChengJiTongJiService
					.findTableBySNOAndXUEQI(tj);
			if (tj == null)
				throw new Exception("奖项时间有误，不能参与学期评分！");
			TableSuZhiJiaoYuJiaFenPingFen sz = tableSuZhiJiaoYuJiaFenPingFenService
					.findByZongHe(tj.getId());
			record.setSuzhi(sz.getId());
			String rootPath = request.getSession().getServletContext()
					.getRealPath("/");
			String subPath = File.separator
					+ "WEB-INF"
					+ File.separator
					+ "file"
					+ File.separator
					+ UUID.randomUUID()
					+ file.getOriginalFilename().substring(
							file.getOriginalFilename().lastIndexOf("."));
			File outFile = new File(rootPath + subPath);
			file.transferTo(outFile);
			record.setFilePath(subPath);
			tableSuZhiJiaoYuJiaFenShenQingService.addToTable(record);
			tableSuZhiJiaoYuJiaFenShenQingService.updateTableData(record);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("tip", e.getMessage());
		}
		return "redirect:editScoreApplyPage.action";
	}
}
