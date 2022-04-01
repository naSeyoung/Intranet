package net.ezens.Intranet.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer{
	
	@Override 
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		/* '/assets/**'로 호출하는 자원은 '/static/assets/' 폴더 아래에서 찾는다. */ 
		registry.addResourceHandler("/assets/**").addResourceLocations("classpath:/static/assets/").setCachePeriod(60 * 60 * 24 * 365); 
		/* '/js/**'로 호출하는 자원은 '/static/js/' 폴더 아래에서 찾는다. */ 
        registry.addResourceHandler("/js/**").addResourceLocations("classpath:/static/js/").setCachePeriod(60 * 60 * 24 * 365); 
		/* '/css/**'로 호출하는 자원은 '/static/css/' 폴더 아래에서 찾는다. */ 
        registry.addResourceHandler("/css/**").addResourceLocations("classpath:/static/css/").setCachePeriod(60 * 60 * 24 * 365); 
		/* '/img/**'로 호출하는 자원은 '/static/img/' 폴더 아래에서 찾는다. */ 
        registry.addResourceHandler("/img/**").addResourceLocations("classpath:/static/img/").setCachePeriod(60 * 60 * 24 * 365); 
        /* '/plugins/**'로 호출하는 자원은 '/static/plugins/' 폴더 아래에서 찾는다. */ 
        registry.addResourceHandler("/plugins/**").addResourceLocations("classpath:/static/plugins/").setCachePeriod(60 * 60 * 24 * 365); 
//        super.addResourceHandlers(registry);

	}
	
	
}
