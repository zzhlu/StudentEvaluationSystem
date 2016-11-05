package cn.xmzh.ses.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/**
 * 文件相关的业务方法
 * 
 * @author 李春
 * @time 2016年10月31日time下午2:53:42
 */
public interface FileService {
	/**
	 * 通过文件路径获取文件输入流
	 * 
	 * @param filePath
	 * @return
	 * @throws Exception
	 */
	public FileInputStream getFileInputStreamByFilePath(String filePath)
			throws Exception;

	/**
	 * 通过文件路径获取文件输出流
	 * 
	 * @param filePath
	 * @return
	 * @throws Exception
	 */
	public FileOutputStream getFileOutputStreamByFilePath(String filePath)
			throws Exception;

	/**
	 * 获取文件夹中的文件数，不包含文件夹的个数
	 * 
	 * @param file
	 * @return
	 */
	public Integer getFilesNumb(File file);
}
