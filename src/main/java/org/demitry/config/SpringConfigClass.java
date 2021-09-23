package org.demitry.config;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.*;

// 방법1 : 코드가 간단함
public class SpringConfigClass extends AbstractAnnotationConfigDispatcherServletInitializer {
    // 디스패처에 매핑할 요청 주소 세팅
    @Override
    protected String[] getServletMappings() {
        return new String[] {"/"};
    }
    // 프로젝트 사용할 bean을 정의하기 위한 클래스
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[] {ServiceAppContext.class};
    }
    // mvc 프로젝트 설정을 위한 클래스 지정
    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[] {ServletAppContext.class};
    }
    // 필터 설정
    @Override
    protected Filter[] getServletFilters() {
        CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
        encodingFilter.setEncoding("UTF-8");
        return new Filter[] {encodingFilter};
    }
}
// 방법2 : 자유도 높음
/*public class SpringConfigClass implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        // 스프링 mvc 프로젝트 설정을 위해 작성하는 클래스 객체 생성
        AnnotationConfigWebApplicationContext servletAppContext = new AnnotationConfigWebApplicationContext();
        servletAppContext.register(ServletAppContext.class);
        // 요청 발생시 요청을 처리하는 서블릿을 DispatcherServlet로 설정
        DispatcherServlet dispatcherServlet = new DispatcherServlet(servletAppContext);
        ServletRegistration.Dynamic servlet = servletContext.addServlet("dispatcher",dispatcherServlet);
        //부가설정
        servlet.setLoadOnStartup(1);   //가장먼저 로딩
        servlet.addMapping("/");
        // bean을 정의하는 클래스를 지정
        AnnotationConfigWebApplicationContext serviceAppContext = new AnnotationConfigWebApplicationContext();
        serviceAppContext.register(ServiceAppContext.class);
        // 리스너 세팅
        ContextLoaderListener listener = new ContextLoaderListener(serviceAppContext);
        servletContext.addListener(listener);
        // 파라메터 인코딩
        FilterRegistration.Dynamic filter = servletContext.addFilter("encodingFilter", CharacterEncodingFilter.class);
        filter.setInitParameter("encoding","UTF-8");
        filter.addMappingForServletNames(null, false, "dispatcher");

    }
}*/
