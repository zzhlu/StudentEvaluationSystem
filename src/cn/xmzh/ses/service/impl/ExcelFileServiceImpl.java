package cn.xmzh.ses.service.impl;

import java.io.InputStream;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.junit.Test;

import cn.xmzh.ses.pojo.Student;
import cn.xmzh.ses.service.ExcelFileService;

/**
 * 
 * @author 李春
 * @time 2016年10月22日time上午8:22:08
 */
public class ExcelFileServiceImpl implements ExcelFileService {

	@Override
	public List<Student> parseExcelFile(InputStream file, Class<Student> clazz)
			throws Exception {
		// 初始化表中需要的列
		String title[] = { "学号", "姓名", "班级", "性别", "寝室楼号", "寝室号及床号", "民族",
				"政治面貌", "联系方式", "是否办理生源地贷款", "特困证明", "身份证号", "银行卡", "家庭详细地址",
				"户口所在地派出所", "QQ号", "父亲姓名", "母亲姓名", "父亲联系方式", "母亲联系方式" };
		// 列名与数据库名称中数据的对应
		Map<String, String> titleMap = new HashMap<String, String>();
		titleMap.put("学号", "sno");
		titleMap.put("姓名", "name");
		titleMap.put("班级", "classid");
		titleMap.put("性别", "gender");
		titleMap.put("寝室楼号", "dormno");
		titleMap.put("寝室号及床号", "dorminfo");
		titleMap.put("民族", "nation");
		titleMap.put("政治面貌", "politicalStatus");
		titleMap.put("联系方式", "phone");
		titleMap.put("是否办理生源地贷款", "haveLoan");
		titleMap.put("特困证明", "havePovertyCertificate");
		titleMap.put("身份证号", "idCard");
		titleMap.put("银行卡", "bankCard");
		titleMap.put("家庭详细地址", "address");
		titleMap.put("户口所在地派出所", "residenceRegistrationAddress");
		titleMap.put("QQ号", "qqNumb");
		titleMap.put("父亲姓名", "fatherName");
		titleMap.put("母亲姓名", "motherName");
		titleMap.put("父亲联系方式", "fatherPhone");
		titleMap.put("母亲联系方式", "motherPhone");

		// 创建Excel表
		Workbook wb = WorkbookFactory.create(file);
		List<Student> list = new ArrayList<Student>();
		// 判断Excel表中工作表的数量
		if (wb.getNumberOfSheets() > 0) {
			int[] index = null;
			// 迭代每一张表
			for (Sheet sheet : wb) {
				// 从第一行获取标题名称对应工作表中列的下标
				index = getIndexByTitle(title, sheet.getRow(0));
				// 判断是否满足至少输入的列数
				if (!getCountOfValidValue(3, index))
					continue;
				// 遍历每一行
				Row row = null; // 行
				Cell cell = null; // 单元格
				Student obj = null; // 学生
				Method method = null; // 单元格的值
				String feildName = null; // 字段名
				String methodName = null; // 方法名
				for (int i = 1; i < sheet.getLastRowNum(); i++) { // 从第1行开始循环，循环到最后一行
					obj = clazz.newInstance(); // 创建新的对象
					row = sheet.getRow(i);
					for (int j = 0; j < index.length; j++) { // 依次填充每一个字段
						cell = row.getCell(index[j]); // 获取字段所对应的单元格
						if (cell != null) {
							feildName = titleMap.get(title[j]); // 获取列对用POJO的字段名
							methodName = "set"
									+ feildName.substring(0, 1).toUpperCase()
									+ feildName.substring(1);
							if (feildName != null && cell != null)
								method = clazz.getMethod(methodName,
										String.class);
							if (method != null) {
								method.invoke(obj, getCellValue(cell));
							}
						}
					}
					list.add(obj); // 保存记录
				}
			}
		}
		return list;
	}

	@Test
	public void testtest() {
		;
	}

	/**
	 * 在读取Excel表格的时候，需要根据需要的列名获取表格中的值，这个函数将需要的
	 * 列的名称和表格中的标题列进行对应，然后返回解析此表格时需要的列的下标
	 * 
	 * @param needTitles
	 *            需要的列标题名称
	 * @param row
	 *            表格中所有已知的列名称
	 * @return 返回下标
	 * @throws Exception
	 */
	private int[] getIndexByTitle(String[] needTitles, Row row)
			throws Exception {
		if (row == null)
			return null;
		// 根据标题名称初始化表格中的列表
		int[] index = new int[needTitles.length];
		String[] tableTitles = new String[row.getLastCellNum()];
		for (int i = 0; i < row.getLastCellNum(); i++) {
			tableTitles[i] = row.getCell(i).getRichStringCellValue().toString();
		}
		// 初始化下标
		for (int i = 0; i < index.length; i++)
			index[i] = -1;
		for (int i = 0; i < needTitles.length; i++) {
			for (int j = 0; j < tableTitles.length; j++) {
				if (needTitles[i].equals(tableTitles[j])) {
					index[i] = j;
					continue;
				}
			}
		}
		return index;
	}

	/**
	 * 
	 * @param validNumb
	 * @param index
	 * @return
	 */
	private boolean getCountOfValidValue(int validNumb, int[] index) {
		int result = 0;
		if (index != null)
			for (int var : index) {
				if (var != -1) {
					result++;
				}
			}
		return result >= validNumb ? true : false;
	}

	/**
	 * 
	 * @param cell
	 * @return
	 */
	private String getCellValue(Cell cell) {
		String result = null;
		if (cell != null)
			switch (cell.getCellType()) {
			case Cell.CELL_TYPE_STRING:
				result = cell.getRichStringCellValue().getString();
				break;
			case Cell.CELL_TYPE_NUMERIC:
				if (DateUtil.isCellDateFormatted(cell)) {
					result = new SimpleDateFormat("yyyy-MM-dd").format(cell
							.getDateCellValue());
				} else {
					result = "" + cell.getNumericCellValue();
				}
				break;
			case Cell.CELL_TYPE_BOOLEAN:
				result = cell.getBooleanCellValue() ? "1" : "0";
				break;
			case Cell.CELL_TYPE_FORMULA:
				result = cell.getCellFormula();
				break;
			default:
				result = "未能识别类型的值";
			}
		return result;
	}
}
