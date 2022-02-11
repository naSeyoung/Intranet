package net.ezens.Intranet.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ezens.Intranet.mapper.ScheMapper;
import net.ezens.Intranet.service.ScheService;

@Service
public class ScheServiceImpl implements ScheService {
	
	@Autowired
	ScheMapper scheMapper;
	
	@Override
	public List<Map<String, Object>> SelectAllList() throws Exception {

		return scheMapper.SelectAllList();
	}

	@Override
	public List<Map<String, Object>> scheList() throws Exception {
		
		return scheMapper.scheList();
	}
	

	@Override
	public void insertSche(Map<String, Object> param) throws Exception {

		scheMapper.insertSche(param);
	}
	
	@Override
	public void Insert(Map<String, Object> param) throws Exception {
		
		scheMapper.Insert(param);
	}

	@Override
	public void Delete(Map<String, Object> param) throws Exception {
		
		scheMapper.Delete(param);
		
	}


}
