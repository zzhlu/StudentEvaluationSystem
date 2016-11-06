package cn.xmzh.ses.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xmzh.ses.pojo.ListParameter;
import cn.xmzh.ses.pojo.Student;
import cn.xmzh.ses.pojo.TClass;
import cn.xmzh.ses.pojo.TableSuZhiJiaoYuJiaFenPingFen;
import cn.xmzh.ses.pojo.TableSuZhiXueFenRiChangXingWeiBuFenPingFen;
import cn.xmzh.ses.pojo.TableZongHeCePingChengJiTongJi;
import cn.xmzh.ses.pojo.Term;
import cn.xmzh.ses.service.StudentService;
import cn.xmzh.ses.service.TClassService;
import cn.xmzh.ses.service.TableSuZhiJiaoYuJiaFenPingFenService;
import cn.xmzh.ses.service.TableSuZhiXueFenRiChangXingWeiBuFenPingFenService;
import cn.xmzh.ses.service.TableZongHeCePingChengJiTongJiService;
import cn.xmzh.ses.service.TermService;

/**
 * 和老师的有关的教学评估链接
 * 
 * @author 李春
 * @time 2016年10月22日time下午5:17:53
 */
@Controller
public class TeacherLinkEvaluation {
	@Autowired
	private TermService termService;
	@Autowired
	private TClassService tClassService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private TableZongHeCePingChengJiTongJiService tableZongHeCePingChengJiTongJiService;
	@Autowired
	private TableSuZhiJiaoYuJiaFenPingFenService tableSuZhiJiaoYuJiaFenPingFenService;
	@Autowired
	private TableSuZhiXueFenRiChangXingWeiBuFenPingFenService tableSuZhiXueFenRiChangXingWeiBuFenPingFenService;

	/**
	 * 打开列出评分页面
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/listEvaluationPage")
	public String listEvaluationPage(Model model) throws Exception {
		model.addAttribute("termList", termService.findAllTerm());
		return "teacher/listEvaluation";
	}

	/**
	 * 列出评分
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeShowEvaluationList")
	public String listEvaluation(Model model, Integer id) throws Exception {
		try {
			TableZongHeCePingChengJiTongJi record = new TableZongHeCePingChengJiTongJi();
			record.setXueqi(id);
			List<TableZongHeCePingChengJiTongJi> list = tableZongHeCePingChengJiTongJiService
					.findTableByXUEQI(record);
			model.addAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "teacher/iframeShowEvaluationList";
	}

	/**
	 * 打开添加评分页面
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addEvaluationPage")
	public String addEvaluationPage(Model model) throws Exception {
		// 查询评分页面需要显示的数据并存在Model对象中【需要测评的学期、需要测评的班级】
		model.addAttribute("termList", termService.findAllTerm());
		model.addAttribute("classList", tClassService.findAllClass());
		// 转发到显示页面
		return "teacher/addEvaluation";
	}

	/**
	 * 
	 * @param content
	 *            提示的内容，发布给学生的通知消息内容
	 * @param classid
	 *            班级ID
	 * @param term
	 *            学期
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addEvaluation")
	public String addEvaluation(Model model, String xueqi, String[] classid,
			String content) throws Exception {
		try {
			// 创建年度评分
			// 1. 查询当前的学期是否存在，如果存在则执行2
			Term term = termService.findTermByXueQi(xueqi);
			if (term == null) {
				// 创建学期
				term = new Term();
				term.setCreateTime(new Date());
				term.setXueqi(xueqi);
				termService.addTerm(term);
			}
			// 2. 查询班级是否存在，若存在则执行3
			int insertNumb = 0;
			List<Student> stuList = null;
			// ---为每一位学生创建《综合测评成绩统计表》
			TableZongHeCePingChengJiTongJi table1 = null;
			// ---为每一位学生创建《素质教育加分评分表》
			TableSuZhiJiaoYuJiaFenPingFen table2 = null;
			// ---为每一位学生创建《日常行为部分评分表》
			TableSuZhiXueFenRiChangXingWeiBuFenPingFen table3 = null;
			for (String var : classid) {
				// 3. 为每一学生添加评估[添加前查询是否已经存在，若存在则不添加]
				stuList = studentService.findStudentByClassID(var);
				for (Student student : stuList) {
					table1 = new TableZongHeCePingChengJiTongJi();
					table2 = new TableSuZhiJiaoYuJiaFenPingFen();
					table3 = new TableSuZhiXueFenRiChangXingWeiBuFenPingFen();
					table1.setSno(student.getSno());
					table1.setXueqi(term.getId());
					// 查询表中是否已经有记录，如果有则说明已经存在，无需添加
					if (tableZongHeCePingChengJiTongJiService
							.findTableBySNOAndXUEQI(table1) != null)
						continue;
					tableZongHeCePingChengJiTongJiService.addTable(table1);
					System.out.println(table1.getId());
					table2.setZonghe(table1.getId());
					tableSuZhiJiaoYuJiaFenPingFenService.addToTable(table2);
					table3.setZonghe(table1.getId());
					tableSuZhiXueFenRiChangXingWeiBuFenPingFenService
							.addToTable(table3);
					insertNumb++;
				}
			}
			// 【【【【暂未实现的任务】】】】
			// ---通知每一位学生
			// 根据业务执行情况，返回执行的提示信息
			// 完成操作后重定向到添加页面
			model.addAttribute("tip", "您插入的记录个数是" + insertNumb);
		} catch (Exception e) {
			// 在这里添加页面提示信息
		}
		return "redirect:scoreWorkPage.action";
	}

	/**
	 * 打开你 评分工作页面
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/scoreWorkPage")
	public String scoreWorkPage(Model model) throws Exception {
		// 查看评分工作页面
		TableZongHeCePingChengJiTongJi record = new TableZongHeCePingChengJiTongJi();
		record.setSno("13030504"); // 设置班级号
		record.setXueqi(1); // 设置查询的学期
		List<TableZongHeCePingChengJiTongJi> tabList = tableZongHeCePingChengJiTongJiService
				.findTableByClassIDAndXUEQIDESC(record); // 查询所有的综合表为添加其他表准备
		model.addAttribute("tableList", tabList);
		return "teacher/scoreWork";
	}

	/**
	 * 评分工作页面提交
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/scoreWork")
	public String scoreWork(Model model) throws Exception {
		return null;
	}

	/**
	 * 创建新的学期
	 * 
	 * @param term
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/addTerm")
	public String addTerm(Term term, HttpServletResponse response, Model model)
			throws Exception {
		if (term != null && term.getXueqi() != null)
			System.out.println(term.getXueqi());
		termService.addTerm(term);
		model.addAttribute("tip", "完成请求！");
		return "content";
	}

	/**
	 * 内嵌页面
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeShowSZXFRCXWBFPF")
	public String iframeShowSZXFRCXWBFPF(Model model, Integer xueqi,
			String classid) throws Exception {
		// 查看评分工作页面
		TableZongHeCePingChengJiTongJi record = new TableZongHeCePingChengJiTongJi();
		record.setSno(classid); // 设置班级号
		record.setXueqi(xueqi); // 设置查询的学期
		List<TableZongHeCePingChengJiTongJi> tabList = tableZongHeCePingChengJiTongJiService
				.findTableByClassIDAndXUEQIDESC(record); // 查询所有的综合表为添加其他表准备
		model.addAttribute("tableList", tabList);
		return "teacher/iframeShowSZXFRCXWBFPF";
	}

	/**
	 * 内嵌页面
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeShowSZJYJFPF")
	public String iframeShowSZJYJFPF(Model model, Integer xueqi, String classid)
			throws Exception {
		// 查看评分工作页面
		TableZongHeCePingChengJiTongJi record = new TableZongHeCePingChengJiTongJi();
		record.setSno(classid); // 设置班级号
		record.setXueqi(xueqi); // 设置查询的学期
		List<TableZongHeCePingChengJiTongJi> tabList = tableZongHeCePingChengJiTongJiService
				.findTableByClassIDAndXUEQIDESC(record); // 查询所有的综合表为添加其他表准备
		model.addAttribute("tableList", tabList);
		return "teacher/iframeShowSZJYJFPF";
	}

	/**
	 * 内嵌页面
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeShowZHCPCJTJ")
	public String iframeShowZHCPCJTJ(Model model, Integer xueqi, String classid)
			throws Exception {
		// 查看评分工作页面
		TableZongHeCePingChengJiTongJi record = new TableZongHeCePingChengJiTongJi();
		record.setSno(classid); // 设置班级号
		record.setXueqi(xueqi); // 设置查询的学期
		List<TableZongHeCePingChengJiTongJi> tabList = tableZongHeCePingChengJiTongJiService
				.findTableByClassIDAndXUEQIDESC(record); // 查询所有的综合表为添加其他表准备
		model.addAttribute("tableList", tabList);
		return "teacher/iframeShowZHCPCJTJ";
	}

	/**
	 * 内嵌页面
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeEditSZXFRCXWBFPF")
	public String iframeEditSZXFRCXWBFPF(Model model, Integer xueqi,
			String classid) throws Exception {
		model.addAttribute("xueqi", xueqi);
		model.addAttribute("classid", classid);
		// 查看评分工作页面
		TableZongHeCePingChengJiTongJi record = new TableZongHeCePingChengJiTongJi();
		record.setSno(classid); // 设置班级号
		record.setXueqi(xueqi); // 设置查询的学期
		List<TableZongHeCePingChengJiTongJi> tabList = tableZongHeCePingChengJiTongJiService
				.findTableByClassIDAndXUEQIDESC(record); // 查询所有的综合表为添加其他表准备
		model.addAttribute("tableList", tabList);
		return "teacher/iframeEditSZXFRCXWBFPF";
	}

	/**
	 * 内嵌页面
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeEditSZJYJFPF")
	public String iframeEditSZJYJFPF(Model model, Integer xueqi, String classid)
			throws Exception {
		model.addAttribute("xueqi", xueqi);
		model.addAttribute("classid", classid);
		// 查看评分工作页面
		TableZongHeCePingChengJiTongJi record = new TableZongHeCePingChengJiTongJi();
		record.setSno(classid); // 设置班级号
		record.setXueqi(xueqi); // 设置查询的学期
		List<TableZongHeCePingChengJiTongJi> tabList = tableZongHeCePingChengJiTongJiService
				.findTableByClassIDAndXUEQIDESC(record); // 查询所有的综合表为添加其他表准备
		model.addAttribute("tableList", tabList);
		return "teacher/iframeEditSZJYJFPF";
	}

	/**
	 * 内嵌页面
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeEditZHCPCJTJ")
	public String iframeEditZHCPCJTJ(Model model, Integer xueqi, String classid)
			throws Exception {
		model.addAttribute("xueqi", xueqi);
		model.addAttribute("classid", classid);
		// 查看评分工作页面
		TableZongHeCePingChengJiTongJi record = new TableZongHeCePingChengJiTongJi();
		record.setSno(classid); // 设置班级号
		record.setXueqi(xueqi); // 设置查询的学期
		List<TableZongHeCePingChengJiTongJi> tabList = tableZongHeCePingChengJiTongJiService
				.findTableByClassIDAndXUEQIDESC(record); // 查询所有的综合表为添加其他表准备
		model.addAttribute("tableList", tabList);
		return "teacher/iframeEditZHCPCJTJ";
	}

	/**
	 * 更新综合测评成绩统计表
	 * 
	 * @param tableList
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeUpdateZHCPCJTJ")
	public String iframeUpdateZHCPCJTJ(Model model, ListParameter tableList)
			throws Exception {
		try {
			for (TableZongHeCePingChengJiTongJi record : tableList
					.getTableZHCPCJTJ())
				tableZongHeCePingChengJiTongJiService
						.updateAlterTableData(record);
		} catch (Exception e) {
			model.addAttribute("tip", "数据更新失败！");
		}
		return "forward:iframeShowZHCPCJTJ.action";
	}

	/**
	 * 
	 * @param tableList
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeUpdateSZXFRCXWBFPF")
	public String iframeUpdateSZXFRCXWBFPF(Model model, ListParameter tableList)
			throws Exception {
		try {
			for (TableSuZhiXueFenRiChangXingWeiBuFenPingFen record : tableList
					.getTableSZXFRCXWBFPF())
				tableSuZhiXueFenRiChangXingWeiBuFenPingFenService
						.updateTableByTeacher(record);
		} catch (Exception e) {
			model.addAttribute("tip", "数据更新失败！");
		}
		return "forward:iframeShowSZXFRCXWBFPF.action";
	}

	/**
	 * 
	 * @param tableList
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/iframeUpdateSZJYJFPF")
	public String iframeUpdateSZJYJFPF(Model model, ListParameter tableList)
			throws Exception {
		try {
			for (TableSuZhiJiaoYuJiaFenPingFen record : tableList
					.getTableSZJYJFPF())
				tableSuZhiJiaoYuJiaFenPingFenService.updateTableData(record);
		} catch (Exception e) {
			model.addAttribute("tip", "数据更新失败！");
		}
		return "forward:iframeShowSZJYJFPF.action";
	}

	/**
	 * 查询记录在册的学期，返回JSON数据
	 * 
	 * @throws Exception
	 */
	@RequestMapping("/selectXueQi")
	public @ResponseBody
	List<Term> selectXueQi() throws Exception {
		// 在返回数据之前需要揩拭掉额外数据，防止数据泄露
		// 从数据库中的查询到所有的记录
		List<Term> list = termService.findAllTerm();
		// 采取安全措施，防止泄密
		for (Term var : list) {
			// 去掉时间字段的内容
			var.setCreateTime(null);
		}

		// 所有操作完成后，返回内容
		return list;
	}

	/**
	 * 根据学期ID查询有统计信息的班级 返回JSON数据
	 * 
	 * @param xueqi
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/selectClassid")
	public @ResponseBody
	List<TClass> selectClassid(Integer xueqi) throws Exception {
		// 在返回数据之前需要揩拭掉额外数据，防止数据泄露
		List<TClass> list = tClassService.findByTermID(xueqi);
		// 采取安全措施，防止泄密
		// for (TClass var : list) {
		// 去掉时间字段的内容
		// }
		// 所有操作完成后，返回内容
		return list;
	}

	@RequestMapping("/selectTable")
	public @ResponseBody
	List<String> selectTable(Integer xueqi, String classid) {
		// 在返回数据之前需要揩拭掉额外数据，防止数据泄露
		return null;
	}
}
