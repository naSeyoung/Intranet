package net.ezens.Intranet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.ezens.Intranet.common.paging.PaginationInfo;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SystemDto extends PaginationInfo{

//	private String userId;
//	private String userPw;
//	private String userName;
//	private String email;
//	private String ctn;
//	private String jobTitle;
//	private String position;
//	private String noticeYn;
//	private String delYn;
//	private String joinCpDt;
//	private String lastInDt;
//	private String lastInIp;
	
	// 회사정보(전화번호,주소 등 컬럼 필요)
	private String cpInfoSeq;
	private String cpName;
	private String cpArriveTime;
	private String cpLeaveTime;
	private String cpDomain;
	private String menuSet;
	private String cpStartLun;
	private String cpEndLun;
	private String cpDin;
	private String cpEndDin;
	private String cpLogoPath;
	
	// 팀/부서 정보
	private String cpDeptSeq;
	private String cpDeptParentSeq;
	private String cpDeptName;
	private String cpDeptOrderRank;
	private String cpDeptUseYn;
	
	
	
}
