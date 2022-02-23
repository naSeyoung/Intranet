package net.ezens.Intranet.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import net.ezens.Intranet.dto.FreeBoardDto;



@Mapper
public interface FreeBoardMapper {
	
	void insContents(FreeBoardDto freeBoard);
	ArrayList<FreeBoardDto> insList(FreeBoardDto freeBoard);			
	
}
