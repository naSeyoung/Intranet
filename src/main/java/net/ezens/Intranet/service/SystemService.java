package net.ezens.Intranet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ezens.Intranet.dto.SystemDto;
import net.ezens.Intranet.mapper.SystemMapper;

@Service
public class SystemService {

	@Autowired
	SystemMapper systemMapper;
	
	public SystemDto getCompanyInfo(String cpInfoSeq) {
		return systemMapper.getCompanyInfo(cpInfoSeq);
	}
	
	public List selectDepartmentList(SystemDto systemDto) {
		return systemMapper.selectDepartmentList(systemDto);
	}
	
	public int selectDepartmentCnt(SystemDto systemDto) {
		return systemMapper.selectDepartmentCnt(systemDto);
	}
	
	public int insertDepartment(SystemDto systemDto) {
		return systemMapper.insertDepartment(systemDto);
	}
	
	public SystemDto getDeptInfo(String cpDeptSeq) {
		return systemMapper.getDeptInfo(cpDeptSeq);
	}

	public int updateDepartment(SystemDto systemDto) {
		return systemMapper.updateDepartment(systemDto);
	}
	
	public int deleteDepartment(SystemDto systemDto) {
		return systemMapper.deleteDepartment(systemDto);
	}
	
}
