package cn.xmzh.ses.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class ExceptionOccur implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exception) {
		ModelAndView modelAndView = new ModelAndView();
		// 显示异常页面
		modelAndView.setViewName("error.jsp");
		return modelAndView;
	}

}
