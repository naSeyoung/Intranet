package net.ezens.Intranet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param;

import lombok.extern.slf4j.Slf4j;
import net.ezens.Intranet.dto.ScheDto;
import net.ezens.Intranet.service.ScheService;

@Controller
@Slf4j
public class ScheController {

	@Autowired
	private ScheService scheService;
	
	
	/*************************************************월    별   일    정*******************************************************************/
//	@GetMapping("/ezenCalendar") // 일정관리탭 - 월간일정
//	public String ezenCalendar() {
//		log.info("#################이젠캘린더 원본");
//		return "schedule/ezenCalendar";
//	}
	@GetMapping("/ezenCalendar") // 일정관리탭 - 월간일정
	public String ezenCalendar() {
		log.info("#################이젠캘린더 원본");
		return "schedule/ezenCalendarOrigin";
	}
	// 임시목록
	@GetMapping("/aTest")
	public ModelAndView scheList(Map<String, Object> map) throws Exception {
		log.info("#################캘린더 임시 목록 페이지 /aTest");
		ModelAndView mav = new ModelAndView();

		List<Map<String, Object>> list = scheService.scheList();
		log.info("list사이즈 : {} ", list.size());
		System.out.println(list.get(0));
		
		// list 모든 요소 출력 
//		for(Model model : models) {
//			System.out.println(model.getTitle());
//		}
		

		mav.addObject("list", list);
		mav.setViewName("schedule/aTest");
		return mav;
	}

	// 월별일정 등록페이지
	@GetMapping("/calendarAdd")
	public String calendarAdd(ModelMap model, HttpSession session, HttpServletRequest request,
			@RequestParam HashMap<String,Object> param) throws Exception {
		log.info("등록일정가보자 /calendarAdd##############");
		
		List<Map<String,Object>> scheTypeList = null;
		
		try {
			scheTypeList = scheService.selectScheType();
		} catch (Exception e) {
			log.error(e.getMessage(),e);
			throw e;
		}
		model.addAttribute("scheTypeList", scheTypeList);
		return "schedule/calendarAdd";
	}

	// 등록
	@PostMapping("/calendarAdded")
	public String calendarAdded(ModelMap model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @RequestParam HashMap<String, Object> param) throws Exception {
		log.info("등록처리 /calendarAdded############################");
		scheService.insertSche(param);
		return "redirect:/aTest";

	}
	
	// 상세페이지
	@GetMapping("/calendarDetail")
	public String calendarDetail(ModelMap model, @RequestParam int scheSeq) throws Exception {
		log.info("#############캘린더 상세페이지 /calendarDetail###############");
		
		List<Map<String,Object>> scheTypeList = null;
		scheTypeList = scheService.selectScheType();
		
		model.addAttribute("scheTypeList", scheTypeList);
		ScheDto scheInfo = scheService.selectScheInfo(scheSeq);
		
		
		model.addAttribute("scheInfo", scheInfo);
		
		return "schedule/calendarDetail";
	}
	
	// 수정페이지
	@GetMapping("/calendarModi")
	public String calendarModi(ModelMap model, @RequestParam int scheSeq) throws Exception {
		log.info("#############캘린더 수정페이지 /calendarModi###############");
		
		List<Map<String,Object>> scheTypeList = null;
		scheTypeList = scheService.selectScheType();
		
		model.addAttribute("scheTypeList", scheTypeList);
		ScheDto scheInfo = scheService.selectScheInfo(scheSeq);
		
		
		model.addAttribute("scheInfo", scheInfo);
		
		return "schedule/calendarModi";
	}
	
	// 수정
	@PostMapping("/calendarModied")
	public String calendarModied(ModelMap model, HttpServletRequest request, HttpServletResponse response, 
			HttpSession session, @RequestParam HashMap<String,Object> param) throws Exception {

		log.info("#################################일정수정처리 시작 /calendarModied###################");
		scheService.updateScheInfo(param);
		return "redirect:/aTest";
	}
	
	@PostMapping("/calendarDel")
	public String calendarDel(ModelMap model, HttpServletRequest request, HttpServletResponse response, 
			HttpSession session, @RequestParam HashMap<String,Object> param) throws Exception {
		
		log.info("##################삭제 레고 /calendarDel#########################");
		scheService.deleteScheInfo(param);
		return "redirect:/aTest";
	}
			
	/******************************************************일     정     설     정 *************************************************************/
	// 등록페이지
	@GetMapping("/setCalendarAdd")
	public String setCalendarAdd() {
		log.info("일정설정 등록페이지");
		return "schedule/setCalendarAdd.tiles";
	}
	
	
	// 등록
	@PostMapping("/setCalendarAdded")
	public String setCalendarAdded(ModelMap model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @RequestParam HashMap<String, Object> param) throws Exception {
		
		scheService.insertScheMst(param);
		return "redirect:/setCalendar";
		
	}

	// 목록
	@GetMapping("/setCalendar")
	public ModelAndView setCalendar(Map<String, Object> map, ModelMap model) throws Exception {
		ModelAndView mav = new ModelAndView();

		List<Map<String, Object>> list = scheService.scheMstList();
		log.info("list사이즈 : {} ", list.size());
		log.info("==============일정성정페이지========================");
		System.out.println(list.get(0));
		mav.addObject("list", list);
		
		mav.setViewName("schedule/setCalendar");
		return mav;
	}
	
	//수정페이지
	@GetMapping("setCalendarModi")
	public String setCalendarModi(ModelMap model, @RequestParam int mstSeq) throws Exception {
		log.info("###############일정수정페이지NEW###############");
		ScheDto scheMstInfo = scheService.selectScheMstInfo(mstSeq);
		
		model.addAttribute("scheMstInfo",scheMstInfo);
		
		return "schedule/setCalendarModi";
	}
	

	
	// 수정처리
	@PostMapping("/setCalendarModied")
	public String setCalendarModied(ModelMap model, HttpServletRequest request, HttpServletResponse response, 
			HttpSession session, @RequestParam HashMap<String,Object> param) throws Exception {
		
		log.info("#################################수정처리 시작");
		scheService.updateScheMstInfo(param);
		return "redirect:/setCalendar";
		
	}
	
	// 삭제
	@PostMapping("/setCalendarBye")
	public String setCalendarBye(ModelMap model, HttpServletRequest request, HttpServletResponse response, 
			HttpSession session, @RequestParam HashMap<String,Object> param) throws Exception {
		
		log.info("#################################삭제처리 시작");
		scheService.deleteScheMstInfo(param);
		return "redirect:/setCalendar";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
/* #################TEST###########################*/
	

	@GetMapping("/calTestPop")
	public String calTestPop() {
		log.info("#######calTestPop##########");
		return "schedule/A";
	}
	
	@GetMapping("/origin")
	public String origin() {
		log.info("#######TEST##########");
		return "schedule/ezenCalendar(03.03)";
	}
	
	@GetMapping("/test1")
	public String test1() {
		log.info("#######TEST##########");
		return "schedule/ezenCalendar(시도1)";
	}
	
	@GetMapping("/please")
	public String please() {
		log.info("#######PLEASE##########");
		return "schedule/please";
	}
	
	@GetMapping("/test2")
	public String test2() {
		log.info("#######TEST##########");
		return "schedule/ezenCalendar(시도2)";
	}
	@GetMapping("/test3")
	public String test3() {
		log.info("#######TEST##########");
		return "schedule/ezenCalendar(시도3)";
	}
	
	/***************************************************************************************************************************************************/

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView AllListVieww(Map<String, Object> map) throws Exception {
		ModelAndView mav = new ModelAndView();

		List<Map<String, Object>> list = scheService.SelectAllList();
		log.info("list사이즈 : {} ", list.size());

		mav.addObject("list", list);
		mav.setViewName("schedule/list");
		return mav;
	}

	@RequestMapping(value = "/list2", method = RequestMethod.GET)
	public String list(Map<String, Object> map, ModelMap model) {
		try {
			model.addAttribute("list", scheService.SelectAllList());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "schedule/list";
	}

	@RequestMapping(value = "/Insert", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView InsertPage(Map<String, Object> map) throws Exception {
		ModelAndView mav = new ModelAndView();

		log.info("Insert페이지");

		mav.setViewName("schedule/Insert");
		return mav;
	}

	@RequestMapping(value = "/InsertSave", method = { RequestMethod.POST, RequestMethod.GET })
	public String InsertSave(ModelMap model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @RequestParam HashMap<String, Object> param) throws Exception {
		scheService.Insert(param);
		return "redirect:/list";

	}
}
