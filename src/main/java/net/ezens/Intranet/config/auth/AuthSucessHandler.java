package net.ezens.Intranet.config.auth;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.ezens.Intranet.mapper.UserMapper;

@Slf4j
@RequiredArgsConstructor
@Component
public class AuthSucessHandler extends SimpleUrlAuthenticationSuccessHandler{

	private final UserMapper userMapper;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response
			, Authentication authentication) throws IOException, ServletException{
		try {
			userMapper.updateUserLastLogin(authentication.getName());
			log.info("updateUserLastLogin");
			
			setDefaultTargetUrl("/ezenCalendar");
			super.onAuthenticationSuccess(request, response, authentication);
			
		} catch (Exception e) {
			log.error("onAuthenticationSuccess Exception : {}", e.getMessage());
		}
		
	}
}
