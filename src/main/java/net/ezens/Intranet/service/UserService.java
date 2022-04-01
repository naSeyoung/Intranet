package net.ezens.Intranet.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

import lombok.extern.slf4j.Slf4j;
import net.ezens.Intranet.config.security.CustomPasswordEncoding;
import net.ezens.Intranet.dto.UserDto;
import net.ezens.Intranet.mapper.UserMapper;

@Slf4j
@Service
public class UserService {

	@Autowired
	UserMapper usermapper;
	
	@Autowired
	private CustomPasswordEncoding passwordEncoder;

	public int insertUser(UserDto userDto) throws Exception {
		String rawPassword = userDto.getUserPw();
		String encPassword = passwordEncoder.sha256Encoding(rawPassword);
		userDto.setUserPw(encPassword);

		return usermapper.insertUser(userDto);
	}

	public List getUserList(UserDto userDto) {
		return usermapper.getUserList(userDto);
	}

	public int getUserListCnt(UserDto userDto) {
		return usermapper.getUserListCnt(userDto);
	}

	public UserDto selectUserInfo(String userId) {
		return usermapper.selectUserInfo(userId);
	}

	@Transactional(readOnly = true)
	public Map<String, String> validateHandling(Errors errors) {
		Map<String, String> validatorResult = new HashMap<>();

		for (FieldError error : errors.getFieldErrors()) {
			String validKeyName = String.format("valid_%s", error.getField());
			validatorResult.put(validKeyName, error.getDefaultMessage());
			log.error("/joinProc : {}", error.getDefaultMessage());
		}
		return validatorResult;

	}
}
