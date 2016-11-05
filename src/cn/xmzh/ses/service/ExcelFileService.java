package cn.xmzh.ses.service;

import java.io.InputStream;
import java.util.List;

import cn.xmzh.ses.pojo.Student;

/**
 * 
 * @author 李春
 * @time 2016年10月22日time上午8:22:03
 */
public interface ExcelFileService {
	public List<Student> parseExcelFile(InputStream file, Class<Student> clazz)
			throws Exception;
}