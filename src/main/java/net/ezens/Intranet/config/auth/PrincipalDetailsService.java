package net.ezens.Intranet.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import net.ezens.Intranet.constant.Method;
import net.ezens.Intranet.dto.UserDto;
import net.ezens.Intranet.mapper.UserMapper;
import net.ezens.Intranet.util.UiUtils;

@Service
public class PrincipalDetailsService implements UserDetailsService{
	
//	@Bean
//	public PasswordEncoder passwordEncoder() {
//		return new SHA512PasswordEncoder();
//	}
	
	@Autowired
	private UserMapper userMapper;
	
	//시큐리티 세션 = Authentication = UserDetails
	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
//		로그인 버튼 누르면 스프링은 IoC컨테이너에서 UserDetailsService로 등록돼있는 타입(PrincipalDetailsService)을 찾는다
		// /login 버튼 눌렀을 때 가져온 파라미터
		try {
			UserDto user = userMapper.selectUserInfo(userId); // db에 user가 있는지 확인
			if(user == null) {
				new UsernameNotFoundException("not found loginId : " + userId);
			}else if(user != null) {
				return new PrincipalDetails(user);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println("null");
		return null;
	}
	
}	