package net.ezens.Intranet.config.auth;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.ibm.icu.util.Calendar;

import lombok.Data;
import net.ezens.Intranet.dto.UserDto;

// 시큐리티가 /login 주소 요청이 오면 낚아채서 로그인 진행시킴
// 로그인이 완료되면 시큐리티 session을 만들어줌
// 우리가 만들어주는 세션이랑 같은건데 시큐리티 세션이 따로있음(Security ContextHolder)
// 시큐리티 세션에 들어갈 수 있는 오브젝트가 정해져있음 => Authentication타입 객체
// Authentication 안에 User 정보가 임ㅅ음
// User오브젝트 타입은 UserDetails타입 객체이어야함
// security Session => Authentication => UserDetails

@Data
public class PrincipalDetails implements UserDetails{

	private UserDto user;
	private Map<String, Object>	attributes;
	
	//일반 로그인
	public PrincipalDetails(UserDto user) {
		this.user = user;
	}

	//해당 User의 권한을 목록
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() { //유저가 갖고있는 권한
		Collection<GrantedAuthority> collet = new ArrayList<GrantedAuthority>();
		collet.add(()->{ return user.getUserRole();});
		return collet;
	}

	@Override
	public String getPassword() {
		return user.getUserPw();
	}

	@Override
	public String getUsername() {
		return user.getUserName();
	}

	//계정 만료 유무
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	//계정 잠김 유무
	@Override
	public boolean isAccountNonLocked() {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.YEAR, -1);
		Date date = new Date(cal.getTimeInMillis());
		if(user.getLastInDt().before(date)) {
			System.out.println("계정이 잠겼습니다. 관리자에 문의해주세요.");
		}
		return true;
	}

	/**
     * 비밀번호 만료 여부
     * true : 만료 안됨
     * false : 만료
     * @return
     */
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	/**
     * 사용자 활성화 여부
     * ture : 활성화
     * false : 비활성화
     * @return
     */
	@Override
	public boolean isEnabled() {
		// 1년이상 비로그인 회원 전환
//		if(현재시간 - user.getLoginDate() > 1년){
//			return false;
//		}
		return true;
	}
}
// 구글 로그인 완료되면 구글 서버에서 우리쪽으로 코드를 돌려준다. 인증이 됐다는 코드를. 그 코드를 갖고 access Token을 요청하는데 이 토큰은 우리가 사용자 대신에 우리 서버가 구글 서버에 사용자의 민감한 정보에 접근할 수 있는 권한이 생김. 
// 이 토큰을 얻기 위해 필요한게 코드인데 이 코드를 받을 수 있는 주소를 URI에 적는다. 컨트롤러 주소를 만들 필요 없음. 라이브러리가 처리해줌.
// 클라이언트 ID와 비밀번호가 나오는데 이건 다른사람에게 노출되면 안됨