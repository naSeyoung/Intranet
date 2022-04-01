package net.ezens.Intranet.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.ezens.Intranet.dto.SystemDto;

@Mapper
public interface SystemMapper {
	
	public SystemDto selectUserInfo(String userId);
	
	public SystemDto getCompanyInfo(String cpInfoSeq);
	
	public List selectDepartmentList(SystemDto systemDto);

	public int selectDepartmentCnt(SystemDto systemDto);
	
	public int insertDepartment(SystemDto systemDto);

	public SystemDto getDeptInfo(String cpDeptSeq);
}
