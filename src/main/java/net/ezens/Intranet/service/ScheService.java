package net.ezens.Intranet.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

public interface ScheService {
	public List<Map<String, Object>> SelectAllList() throws Exception;
	public List<Map<String, Object>> scheList() throws Exception;
	public void insertSche(Map<String,Object> param) throws Exception;
	public void Insert(Map<String,Object> param) throws Exception;
	public void Delete(Map<String,Object> param) throws Exception;
}
