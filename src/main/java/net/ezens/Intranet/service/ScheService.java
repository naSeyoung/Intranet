package net.ezens.Intranet.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ezens.Intranet.dto.ScheDto;
import net.ezens.Intranet.mapper.ScheMapper;

@Service
public class ScheService {
	
	@Autowired
	ScheMapper scheMapper;
	
//	TEST
	
	public ArrayList<ScheDto> calenList() throws Exception {
		
		return scheMapper.calenList();
	}
	
//	TEST
	
	public List<Map<String, Object>> SelectAllList() throws Exception {

		return scheMapper.SelectAllList();
	}

	public List<Map<String, Object>> scheList() throws Exception {
		
		return scheMapper.scheList();
	}
	

	public List<Map<String, Object>> scheMstList() throws Exception {
		
		return scheMapper.scheMstList();
	}
	
	public List<Map<String, Object>> selectScheType() throws Exception {

		return scheMapper.selectScheType();
	}

	/*
	 * public Map<String, Object> selectScheMstInfo() throws Exception {
	 * 
	 * return scheMapper.selectScheMstInfo(); }
	 */	

//	public Map<String, Object> selectScheMstInfo(Map<String,Object> param) throws Exception {
//		return scheMapper.selectScheMstInfo(param);
//	}

	//rr 
//	public  ScheModel selectScheMstInfo(ScheModel scheVo) throws Exception {
//		return scheMapper.selectScheMstInfo(scheVo);
//	}
	
	// 월별일정 상세
	public ScheDto selectScheInfo(int scheSeq) throws Exception {
		
		return scheMapper.selectScheInfo(scheSeq);
	}

	// 상세
	public ScheDto selectScheMstInfo(int mstSeq) throws Exception {
//		Map<String, Object> list = scheMapper.selectScheMstInfo(param);
//		
//		if(list != null && list.size() > 0) {
//			return (Map<String, Object>) list.get(0);
//		} else {
//			return null;
//		}
		
		return scheMapper.selectScheMstInfo(mstSeq);
	}
	
	// 수정
	public void updateScheMstInfo(Map<String, Object> param) throws Exception {
		
		scheMapper.updateScheMstInfo(param);
	}
	
	// 월별일정 수정
	public void updateScheInfo(Map<String, Object> param) throws Exception {
		
		scheMapper.updateScheInfo(param);
	}
	
	// 삭제
	public void deleteScheMstInfo(Map<String,Object> param) throws Exception {
		
		scheMapper.deleteScheMstInfo(param);
	}

	// 월별일정 삭제
	public void deleteScheInfo(Map<String,Object> param) throws Exception {
		
		scheMapper.deleteScheInfo(param);
	}
	
	public void insertSche(Map<String, Object> param) throws Exception {

		scheMapper.insertSche(param);
	}

	
	
	
	// 파일테스트
	public void fileTest(Map<String, Object> param) throws Exception {
		
		scheMapper.fileTest(param);
	}
	
	public void insertScheMst(Map<String, Object> param) throws Exception {
		
		scheMapper.insertScheMst(param);
	}
	
	public void Insert(Map<String, Object> param) throws Exception {
		
		scheMapper.Insert(param);
	}

	public void Delete(Map<String, Object> param) throws Exception {
		
		scheMapper.Delete(param);
		
	}








}
