package net.ezens.Intranet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/freeboard") 
public class FreeBoardController {
	//자유 게시판 
	@RequestMapping("/FreeBoardList")
	public String FreeBoardList() {
		System.out.println("자유게시판 이동");
		
		return "freeboard/FreeBoardList";
	}
}
