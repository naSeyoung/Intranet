package net.ezens.Intranet.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import net.ezens.Intranet.dto.FreeBoardDto;



@Mapper
public interface FreeBoardMapper {
	
	void insContents(FreeBoardDto freeBoard); //insert
	
	ArrayList<FreeBoardDto> insList(FreeBoardDto freeBoard); //select
	public FreeBoardDto detail(int boardSeq);
	public void FreeBoardUpdatePost(FreeBoardDto freeBoard); 
	public void delContents(FreeBoardDto freeBoard);
}
