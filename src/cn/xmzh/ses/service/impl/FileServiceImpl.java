package cn.xmzh.ses.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import cn.xmzh.ses.service.FileService;

public class FileServiceImpl implements FileService {

	@Override
	public FileInputStream getFileInputStreamByFilePath(String filePath)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FileOutputStream getFileOutputStreamByFilePath(String filePath)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer getFilesNumb(File file) {
		int numb = 0;
		if (file.isFile())
			return numb++;
		if (file.isDirectory())
			for (File var : file.listFiles())
				if (var.isFile())
					numb++;
				else
					numb += getFilesNumb(var);
		return numb;
	}

}
