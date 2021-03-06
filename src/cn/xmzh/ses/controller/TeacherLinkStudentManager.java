package cn.xmzh.ses.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import cn.xmzh.ses.pojo.Page;
import cn.xmzh.ses.pojo.Student;
import cn.xmzh.ses.pojo.TClass;
import cn.xmzh.ses.pojo.TableSuZhiJiaoYuJiaFenShenQing;
import cn.xmzh.ses.pojo.TableZongHeCePingChengJiTongJi;
import cn.xmzh.ses.service.ExcelFileService;
import cn.xmzh.ses.service.StudentService;
import cn.xmzh.ses.service.TClassService;
import cn.xmzh.ses.service.TableSuZhiJiaoYuJiaFenPingFenService;
import cn.xmzh.ses.service.TableSuZhiJiaoYuJiaFenShenQingService;
import cn.xmzh.ses.service.TableSuZhiXueFenRiChangXingWeiBuFenPingFenService;
import cn.xmzh.ses.service.TableZongHeCePingChengJiTongJiService;
import cn.xmzh.ses.service.TermService;

/**
 * 与老师有关的学生管理链接
 * 
 * @author 李春
 * @time 2016年10月21日time下午5:09:39
 */
@Controller
public class TeacherLinkStudentManager {

	@Autowired
	private TermService termService;
	@Autowired
	private TClassService tClassService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private ExcelFileService excelFileService;
	@Autowired
	private TableSuZhiJiaoYuJiaFenPingFenService tableSuZhiJiaoYuJiaFenPingFenService;
	@Autowired
	private TableSuZhiJiaoYuJiaFenShenQingService tableSuZhiJiaoYuJiaFenShenQingService;
	@Autowired
	private TableZongHeCePingChengJiTongJiService tableZongHeCePingChengJiTongJiService;
	@Autowired
	private TableSuZhiXueFenRiChangXingWeiBuFenPingFenService tableSuZhiXueFenRiChangXingWeiBuFenPingFenService;

	/**
	 * 打开添加学生页面
	 * 
	 * @return
	 */
	@RequestMapping("/addStudentPage")
	public String addStudentPage() {
		return "teacher/addStudent";
	}

	/**
	 * 添加学生
	 * 
	 * @param student
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addStudent")
	public String addStudent(Model model, Student student) throws Exception {
		try {
			// 验证表单数据是否符合要求
			if (tClassService.findByClassID(student.getClassid()) == null)
				throw new Exception("班级不存在");
			if (student.getSno() == null || "".equals(student.getSno()))
				throw new Exception("学生的学号不能为空！");
			if (student.getName() == null || "".equals(student.getName()))
				throw new Exception("学生姓名不能为空");
			// 添加到数据库中
			studentService.addStudent(student);
			model.addAttribute("tip", "添加成功！");
		} catch (Exception e) {
			model.addAttribute("tip", e.getMessage());
		}
		model.addAttribute("showTip", "true");
		// 返回操作信息
		return "teacher/addStudent";
	}

	/**
	 * 删除学生信息
	 * 
	 * @param model
	 * @param student
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteStudent")
	public String deleteStudent(Model model, String sno) throws Exception {
		try {
			Student student = studentService.findStudentBySno(sno);
			if (student == null)
				throw new Exception("该生不存在");
			// 删除与该生相关的数据库记录
			List<TableZongHeCePingChengJiTongJi> tableZHCPCJTJList = tableZongHeCePingChengJiTongJiService
					.findTableBySNO(sno);
			for (TableZongHeCePingChengJiTongJi list : tableZHCPCJTJList) {
				tableSuZhiXueFenRiChangXingWeiBuFenPingFenService
						.deleteByID(list.getTableSZXFXWBF().getId());
				for (TableSuZhiJiaoYuJiaFenShenQing var : list.getTableSZJYJF()
						.getTableSZJYJFSQ())
					tableSuZhiJiaoYuJiaFenShenQingService.deleteByID(var
							.getId());
				tableSuZhiJiaoYuJiaFenPingFenService.deleteByID(list
						.getTableSZJYJF().getId());
				tableZongHeCePingChengJiTongJiService.deleteTable(list.getId());
			}
			// 从数据库中删除该生的记录
			studentService.deleteStudentBySno(student.getSno());
		} catch (Exception e) {
			model.addAttribute("tip", "删除失败！");
		}
		return "forward:showStudentInformation.action";
	}

	/**
	 * 修改学生信息
	 * 
	 * @param request
	 * @param model
	 * @param student
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateStudentInformation")
	public String updateStudentInformation(HttpServletRequest request,
			Model model, Student student) throws Exception {
		try {
			if (student == null || student.getSno() == null
					|| student.getClassid() == null)
				throw new Exception("缺乏重要参数！");
			studentService.updateStudentBySno(student);
			request.setAttribute("sno", student.getSno());
		} catch (Exception e) {
			model.addAttribute("tip", "信息修改失败！");
			request.setAttribute("sno", student.getSno());
		}
		return "forward:showStudentInformation.action";
	}

	/**
	 * 打开通过Excel导入学生页面
	 * 
	 * @return
	 */
	@RequestMapping("/addStudentByExcelPage")
	public String addStudentByExcelPage() {
		return "teacher/addStudentByExcel";
	}

	/**
	 * 通过Excel导入学生信息
	 * 
	 * @param model
	 * @param request
	 * @param file
	 * @return
	 * @throws Exception
	 * @throws IOException
	 */
	@RequestMapping("/addStudentByExcel")
	public String addStudentByExcel(Model model, MultipartFile file)
			throws IOException, Exception {
		try {
			if (file == null || file.isEmpty())
				throw new Exception("未上传文件！");
			List<Student> stuList = excelFileService.parseExcelFile(
					file.getInputStream(), Student.class);
			for (Student student : stuList) {
				if (student.getSno() != null && !"".equals(student.getSno())) {
					if (tClassService.findByClassID(student.getClassid()) == null)
						// 班级不存在需要创建班级
						tClassService.addTableData(new TClass(student
								.getClassid(), "计算机科学与技术专业", "信息科学与工程学院"));
					student.setPassword("123");
					studentService.addStudent(student);
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("tip", e.getMessage());
			e.printStackTrace();
		}
		return "teacher/addStudentByExcel";
	}

	/**
	 * 打开学生展示页面
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/listStudentPage")
	public String listStudentPage(Model model, Page page) throws Exception {
		model.addAttribute("classList", tClassService.findAllClass());
		return "teacher/listStudent";
	}

	/**
	 * 列出学生
	 * 
	 * @param student
	 * @return
	 */
	@RequestMapping("/listStudent")
	public String listStudent(Student student) {
		return "teacher/listStudent";
	}

	/**
	 * 根据班级号显示学生列表
	 * 
	 * @param model
	 * @param classid
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeShowStudentList")
	public String iframeShowStudent(Model model, String classid)
			throws Exception {
		// 从数据库中查询到学生信息，然后添加到Model模型中
		model.addAttribute("stuList",
				studentService.findStudentByClassID(classid));
		return "teacher/iframeShowStudentList";
	}

	/**
	 * 显示某个学生的详细信息
	 * 
	 * @param model
	 * @param sno
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showStudentInformation")
	public String showStudentInformation(Model model, String sno)
			throws Exception {
		model.addAttribute("student", studentService.findStudentBySno(sno));
		return "teacher/showStudentInformation";
	}

	/**
	 * 打开学生成绩查询页面
	 * 
	 * @return
	 */
	@RequestMapping("scoreCheck")
	public String scoreCheck() {
		return "teacher/scoreCheck";
	}
}
