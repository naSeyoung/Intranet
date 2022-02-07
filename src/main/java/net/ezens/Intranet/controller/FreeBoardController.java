package net.ezens.Intranet.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/freeboard") 
public class FreeBoardController {
	//자유 게시판 
	@RequestMapping(value="/FreeBoardList", method = RequestMethod.GET)
	public String FreeBoardList(Locale locale, Model model) {
		System.out.println("자유게시판 이동");
		
		return "freeboard/freeBoardList";
	}
	//자유게시판 등록 
	@RequestMapping(value="/FreeBoardReg", method = RequestMethod.GET)
	public String FreeBoardReg(Locale locale, Model model) {
		
		return "freeboard/freeBoardReg";
	}
	
}
