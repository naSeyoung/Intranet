package net.ezens.Intranet.mapper;

import java.time.LocalDateTime;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.ezens.Intranet.dto.UserDto;

@Mapper
public interface UserMapper {
	
	public List getUserList(UserDto userDto);
	
	public int insertUser(UserDto userDto);
	
	public int getUserListCnt(UserDto userDto);
	
//	public String getUserInfo(String userId);
	
	public UserDto selectUserInfo(String userId);

	public UserDto saveUserInfo(UserDto userDto);
	
	public void updateUserLastLogin(String userId);
}
