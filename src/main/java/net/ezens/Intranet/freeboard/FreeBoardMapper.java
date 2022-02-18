package net.ezens.Intranet.freeboard;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.ezens.Intranet.freeboard.model.FreeBoard;

@Repository
public interface FreeBoardMapper {
	
	void insContents(FreeBoard freeBoard,String board_Seq);

	
}
