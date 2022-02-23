package net.ezens.Intranet.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import net.ezens.Intranet.dto.FreeBoardDto;
import net.ezens.Intranet.service.FreeBoardService;

@Controller
public class FreeBoardController {
	@Autowired
	FreeBoardService boardService;
	
	//private String board_Seq;
	
	//자유 게시판 
	@GetMapping(value="/FreeBoardList")
	public String FreeBoardList(FreeBoardDto freeBoard,Model d) {
		System.out.println("자유게시판 이동");
		d.addAttribute("list",boardService.insList(freeBoard));
		return "freeboard/freeBoardList.tiles";
	}
	//자유게시판 등록 
	@GetMapping(value="/FreeBoardReg")
	public String FreeBoardReg(FreeBoardDto freeBoard) {
		
	return "freeboard/freeBoardReg.tiles";
	}
	
	//등록 후 
	@PostMapping(value="/FreeBoardRegFin")
	public String FreeBoardReged(FreeBoardDto freeBoard) {
		boardService.insContents(freeBoard);
		System.out.println("=========FreeBoardRegFin==========진입완료");
	 return "redirect:/FreeBoardList";
	
	}
	//자유게시판 상세
	@GetMapping(value="/FreeBoardDetail")
	public String FreeBoardDetail(Locale locale, Model model) {
		
		return "freeboard/freeBoardDetail.tiles";
	}
	
}
