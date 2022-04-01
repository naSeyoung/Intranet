package net.ezens.Intranet.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import net.ezens.Intranet.dto.ScheDto;


@Mapper
public interface ScheMapper {
	
//	TEST
	
	public ArrayList<ScheDto> calenList() throws Exception;
	
//	TEST
	
	
	public List<Map<String, Object>> SelectAllList() throws Exception;
	public List<Map<String, Object>> scheList() throws Exception;
	
	
	public List<Map<String, Object>> selectScheType() throws Exception;
	//월별일정 상세
	public ScheDto selectScheInfo(int scheSeq) throws Exception;
	
	// 일정설정 목록
	public List<Map<String, Object>> scheMstList() throws Exception;

	// 일정설정 상세조회
	public ScheDto selectScheMstInfo(int mstSeq) throws Exception;
//	public  ScheModel selectScheMstInfo(ScheModel scheVo) throws Exception;
	
	// 일정설정 수정
	public void updateScheMstInfo(Map<String,Object> param) throws Exception;
	
	// 월별일정 수정
	public void updateScheInfo(Map<String,Object> param) throws Exception;
	
	// 삭제
	public void deleteScheMstInfo(Map<String,Object> param) throws Exception;
	// 월별일정 삭제
	public void deleteScheInfo(Map<String,Object> param) throws Exception;
	
	// 일정 등록
	public void insertSche(Map<String,Object> param) throws Exception;

	// 일정 파일 등록 TEST
	public void fileTest(Map<String,Object> param) throws Exception;
	
	// 일정설정 등록
	public void insertScheMst(Map<String,Object> param) throws Exception;
	
	public void Insert(Map<String,Object> param) throws Exception;
	public void Delete(Map<String,Object> param) throws Exception;
	
}
