package net.ezens.Intranet.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.ezens.Intranet.common.paging.PaginationInfo;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDto extends PaginationInfo{

	private String userId;
	private String userPw;
	private String userName;
	private String email;
	private String ctn;
	private String cpInfoSeq;
	private String cpDeptSeq;
	private String jobTitle;
	private String position;
	private String noticeYn;
	private String delYn;
	private String joinCpDt;
	private Date lastInDt;
	private String lastInIp;
	private String userRole = "ROLE_ADMIN";
	
	@Builder
	public UserDto(String username, String password, String role) {
		this.userId = username;
		this.userPw = password;
		this.userRole = role;
	}
}
