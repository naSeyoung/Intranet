package net.ezens.Intranet.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import lombok.RequiredArgsConstructor;
import net.ezens.Intranet.config.auth.AuthFailureHandler;
import net.ezens.Intranet.config.auth.AuthSucessHandler;
import net.ezens.Intranet.config.security.CustomPasswordEncoding;

@RequiredArgsConstructor
@Configuration
@EnableWebSecurity //스프링 시큐리티 필터가 스프링 필터체인에 등록됨
@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true) // securedEnabled-secured 어노테이션 활성화, prePostEnabled 어노테이션 활성화
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	private final AuthSucessHandler authSucessHandler;
	private final AuthFailureHandler authFailureHandler;
	
//	@Autowired
//	PrincipalDetailsService principalDetailsService;
	
	@Bean //해당 메서드의 리턴되는 오브젝트를 IoC로 등록해준다.
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
	
	@Autowired
	CustomPasswordEncoding encodePwd;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception { 
		http.csrf().disable();
		http.authorizeRequests()
				.antMatchers("/user/**").authenticated() // 인증만되면 들어갈 수 있는 주소
				.antMatchers("/manager/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_MANAGER')")
				.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
				.antMatchers("/system/**").access("hasRole('ROLE_ADMIN')")
				.anyRequest().permitAll()
			.and()
				.formLogin() 
				.loginPage("/loginForm")
				.loginProcessingUrl("/loginProc") //로그인 주소가 호출되면서 시큐리티가 낚아채서 대신 로그인 진행 -> 컨트롤러에 로그인 안만들어줘도됨
				.defaultSuccessUrl("/ezenCalendar")
				.usernameParameter("userId")
				.passwordParameter("userPw")
//				.failureUrl("/error/error")
				.successHandler(authSucessHandler)
				.failureHandler(authFailureHandler)
			.and()
				.logout()
				.invalidateHttpSession(true).deleteCookies("JSESSIONID");
//				.logoutUrl("/loginForm")
				;
	}
	
	 @Override
	 public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/js/**","/css/**","/img/**","/assets/**","/plugins/**");
	 }
	
}
