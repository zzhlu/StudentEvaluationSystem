package cn.xmzh.ses.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * 自定义类型转换器
 * 
 * @author 李春
 * @time 2016年10月23日time下午12:24:45
 */
public class DateConverter implements Converter<String, Date> {

	@Override
	public Date convert(String date) {
		try {
			return new SimpleDateFormat("yyyy-MM-dd").parse(date);
		} catch (ParseException e) {
		}
		return null;
	}

}
