package net.ezens.Intranet.freeboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.ezens.Intranet.freeboard.model.FreeBoard;

@Service
public class FreeBoardService {
	@Autowired
	FreeBoardMapper freeboardMapper;
	@Transactional
	public void insContents(FreeBoard freeBoard,String board_Seq) {
		
		 freeboardMapper.insContents(freeBoard,board_Seq);
	}

}
