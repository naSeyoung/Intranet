package net.ezens.Intranet.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.ezens.Intranet.dto.TestDto;

@Mapper
public interface TestMapper {
	
	public TestDto selectTest();

}
