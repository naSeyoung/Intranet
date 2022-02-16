package net.ezens.Intranet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ezens.Intranet.dto.TestModel;
import net.ezens.Intranet.mapper.TestMapper;

@Service
public class TestService {

	@Autowired
	TestMapper testMapper;
	
	public TestModel selectTest() {
		return testMapper.selectTest();
	}
}
