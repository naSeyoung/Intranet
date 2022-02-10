package net.ezens.Intranet.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;


@Mapper //스프링이 dao작성해주면 @Repository ㅇㅇ, Mapper은 인터페이스에서만 사용 가능
public interface ScheMapper {
	public List<Map<String, Object>> SelectAllList() throws Exception;
	public List<Map<String, Object>> scheList() throws Exception;
	public void Insert(Map<String,Object> param) throws Exception;
	public void Delete(Map<String,Object> param) throws Exception;
	
}
