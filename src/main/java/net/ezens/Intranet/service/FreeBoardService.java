package net.ezens.Intranet.service;
import java.util.ArrayList;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.ezens.Intranet.dto.FreeBoardDto;
import net.ezens.Intranet.mapper.FreeBoardMapper;


@Service
public class FreeBoardService {
	@Autowired
	FreeBoardMapper freeboardMapper;
	@Transactional
	public void insContents(FreeBoardDto freeBoard) {
		 freeboardMapper.insContents(freeBoard);
	}
	public ArrayList<FreeBoardDto> insList(FreeBoardDto freeBoard){
	
		return freeboardMapper.insList(freeBoard);
	}

}