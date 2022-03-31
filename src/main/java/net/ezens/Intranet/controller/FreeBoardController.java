package net.ezens.Intranet.controller;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import net.ezens.Intranet.config.DataSourceConfig;
import net.ezens.Intranet.dto.FreeBoardDto;
import net.ezens.Intranet.service.FreeBoardService;

@Controller
@Slf4j
public class FreeBoardController {
	@Autowired
	FreeBoardService boardService;
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(DataSourceConfig.class);
	//자유 게시판 
	/*@GetMapping(value="/FreeBoardList")
	public String FreeBoardList(@RequestParam(value="type",required=false) String type, @RequestParam(value="schWord",required=false) String schWord, 
			FreeBoardDto freeBoard,Model d) {
		System.out.println("자유게시판 이동");
		freeBoard.setType(type);
		freeBoard.setSchWord(schWord);
		d.addAttribute("list",boardService.insList(freeBoard));
		return "freeboard/freeBoardList.tiles";
	}	*/
	@GetMapping(value="/FreeBoardList")
	public String FreeBoardList(@RequestParam(value="type",required=false) String type, @RequestParam(value="schWord",required=false) String schWord, 
			FreeBoardDto freeBoard,Model d) {
		System.out.println("자유게시판 이동");
		freeBoard.setType(type);
		freeBoard.setSchWord(schWord);
		d.addAttribute("list",boardService.insList(freeBoard));
		  log.info("schWord ==>" + schWord);
		  log.info("type==>" + type);
		  log.debug("");
		  log.debug(type);
		  
		logger.info(type);
		return "freeboard/freeBoardList.tiles";
	}
	//자유게시판 상세
	@GetMapping(value="/FreeBoardDetail")
	public String FreeBoardDetail(int boardSeq, Model d) {
		System.out.println("상세페이지 이동"); 
		d.addAttribute("vo", boardService.detail(boardSeq));
		return "freeboard/freeBoardDetail.tiles";
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
	//수정 
	@GetMapping(value="/FreeBoardUpdateView")
	public String FreeBoardUpdate(Model d,FreeBoardDto freeBoard) {
		System.out.println("업데이트 페이지 이동");
		d.addAttribute("upt",boardService.detail(freeBoard.getBoardSeq()));
		return "freeboard/freeBoardUpt.tiles";
	}
	@PostMapping(value="/FreeBoardUpdate")
	public String FreeBoardUpdatePost(FreeBoardDto freeBoard){
		boardService.FreeBoardUpdate(freeBoard);
		// return "redirect:/FreeBoardDetail?boardSeq="+freeBoard.getBoardSeq()+"";
		//return "redirect:/FreeBoardReg?boardSeq="+freeBoard.getBoardSeq()+"";
		 return "redirect:/FreeBoardList";
	}
	//삭제 
 	@PostMapping(value="/ContentsDel")
	public String ContentsDelFin(FreeBoardDto freeBoard) {
	 boardService.delContents(freeBoard);
	 System.out.println("삭제완료");
	 return "redirect:/FreeBoardList";
	}
}
