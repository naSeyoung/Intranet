package net.ezens.Intranet.freeboard;

import org.apache.ibatis.annotations.Mapper;

import net.ezens.Intranet.freeboard.model.FreeBoard;

@Mapper
public interface FreeBoardMapper {
	
	void insContents(FreeBoard freeBoard,String board_Seq);

	
}
