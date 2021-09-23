package org.demitry.config;

import org.springframework.context.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// 스프링 mvc 프로젝트에 관련된 설정을 하는 클래스
@Configuration
// controller 어노테이션이 세팅되어 있는 클래스를 Controller로 등록
@EnableWebMvc
// 스캔할 패키지 지정
@ComponentScan(basePackages = {"org.demitry.home.controller", "org.demitry.aptinfo.controller",
                               "org.demitry.notice.controller", "org.demitry.realprice.controller",
                               "org.demitry.trade.controller", "org.demitry.login.controller"})
@ComponentScan(basePackages = {"org.demitry.notice.dao", "org.demitry.notice.service"})
// 프로퍼티 파일 경로지정
/*@PropertySource("/WEB-INF/properties/db.properties")*/
// XML context를 가져와서 동시 사용
@ImportResource("/WEB-INF/spring/servlet-context.xml")
public class ServletAppContext implements WebMvcConfigurer {

    // 뷰 리졸버 설정
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        WebMvcConfigurer.super.configureViewResolvers(registry);
        registry.jsp("/WEB-INF/views/",".jsp");
    }
    //정적파일 매핑
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        WebMvcConfigurer.super.addResourceHandlers(registry);
        registry.addResourceHandler("/**").addResourceLocations("/static/");
    }

    /*    // db 접속정보 주입
    @Value("${db.classname}")
    private String db_classname;
    @Value("${db.url}")
    private String db_url;
    @Value("${db.username}")
    private String db_username;
    @Value("${db.password}")
    private String db_password;*/

    /*//데이터베이스 접속정보 관리
    @Bean
    public BasicDataSource dataSource() {
        BasicDataSource source = new BasicDataSource();
        source.setDriverClassName(db_classname);
        source.setUrl(db_url);
        source.setUsername(db_username);
        source.setPassword(db_password);
        return source;
    }

    // 쿼리문과 접속 관리하는 객체
    @Bean
    public SqlSessionFactory factory(BasicDataSource source) throws Exception {
        SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
        factoryBean.setDataSource(source);
        SqlSessionFactory factory = factoryBean.getObject();
        return factory;
    }

    // 쿼리문 실행을 위한 객체(mapper 관리)
    @Bean   //공지사항관리 맵퍼
    public MapperFactoryBean<NoticeMapper> getNoticeMapper(SqlSessionFactory factory) throws Exception{
        MapperFactoryBean<NoticeMapper> factoryBean = new MapperFactoryBean<NoticeMapper>(NoticeMapper.class);
        factoryBean.setSqlSessionFactory(factory);
        return factoryBean;
    }*/

}
