package cn.xmzh.ses.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author 李春
 * @time 2016年10月22日time下午11:38:42
 */
public class LoginStateInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exception)
			throws Exception {
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		// 如果Session中不存在user属性，则表示未登录，需要拦截此请求
		if (session.getAttribute("user") == null)
			// Session中不存在user属性，需要验证是否为登录请求，若是则放行，否则拦截
			if (request.getRequestURL().indexOf(
					session.getServletContext().getContextPath()
							+ "/login.action") < 0) {
				request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(
						request, response);
				System.out.println("未登录，需要登录请求！");
				return false;
			}
		return true;
	}
}
