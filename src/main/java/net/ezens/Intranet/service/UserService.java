package net.ezens.Intranet.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

import lombok.extern.slf4j.Slf4j;
import net.ezens.Intranet.config.security.CustomPasswordEncoding;
import net.ezens.Intranet.dto.UserDto;
import net.ezens.Intranet.mapper.UserMapper;
import net.ezens.Intranet.util.AESUtil;

@Slf4j
@Service
public class UserService {

	@Autowired
	UserMapper usermapper;
	
	@Autowired
	private AESUtil aes;
	
	@Autowired
	private CustomPasswordEncoding passwordEncoder;
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	public int insertUser(UserDto userDto) throws Exception {
		String rawPassword = userDto.getUserPw();
		String encPassword = bCryptPasswordEncoder.encode(rawPassword);
//		String encPassword = aes.encryptCBC(rawPassword);
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
