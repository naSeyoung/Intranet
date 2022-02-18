package net.ezens.Intranet.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.Value;
import net.ezens.Intranet.freeboard.FreeBoardService;
import net.ezens.Intranet.freeboard.model.FreeBoard;

@Controller
public class FreeBoardController {
	@Autowired
	FreeBoardService boardService;
	
	//private String board_Seq;
	
	//자유 게시판 
	@RequestMapping(value="/FreeBoardList", method = RequestMethod.GET)
	public String FreeBoardList(Locale locale, Model model) {
		System.out.println("자유게시판 이동");
		
		return "freeboard/freeBoardList.tiles";
	}
	//자유게시판 등록 
	@RequestMapping(value="/FreeBoardReg",method = RequestMethod.GET)
	public String FreeBoardReg(FreeBoard freeBoard,String board_Seq) {
		boardService.insContents(freeBoard, board_Seq);
	//return "freeboard/freeBoardReg.tiles";
		return "";
	}
	
	//자유게시판 상세
	@RequestMapping(value="/FreeBoardDetail", method = RequestMethod.GET)
	public String FreeBoardDetail(Locale locale, Model model) {
		
		return "freeboard/freeBoardDetail.tiles";
	}
	
}
