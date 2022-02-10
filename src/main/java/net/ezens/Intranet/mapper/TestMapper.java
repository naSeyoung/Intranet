package net.ezens.Intranet.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.ezens.Intranet.dto.TestModel;

@Mapper
public interface TestMapper {
	
	public TestModel selectTest();

}
