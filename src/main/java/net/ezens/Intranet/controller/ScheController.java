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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ScheController {
//	
//	@Autowired
////	private ScheService scheService;
//	
//	@GetMapping("/ezenCalendar") //일정관리탭 - 월간일정
//	public String ezenCalendar() {
//		log.info("이젠캘린더 원본");
//		log.info("이젠캘린더 원본");
//		log.info("이젠캘린더 원본");
//		return "schedule/ezenCalendar";
//	}
//	@GetMapping("/ezenCalendarTEST") //일정관리탭 - 월간일정
//	public String ezenCalendarTEST() {
//		log.info("ezenCalendarTEST");
//		log.info("ezenCalendarTEST");
//		log.info("ezenCalendarTEST");
//		return "schedule/ezenCalendarTEST";
//	}
//
//	@GetMapping("/calendarAdd") //일정관리탭 - 일정등록
//	public String calendarAdd() {
//		log.info("일정등록페이지");
//		return "schedule/calendarAdd";
//	}
//
//	@GetMapping("/detailCalendar") //일정상세페이지 
//	public String detailCalender() {
//		log.info("일정상세페이지");
//		return "schedule/detailCalendar";
//	}
//	
//	@GetMapping("/calendarModi") //일정수정페이지 
//	public String calendarModi() {
//		log.info("일정수정페이지");
//		return "schedule/calendarModi";
//	}
//	
//	@RequestMapping(value="/setCalendar", method= {RequestMethod.POST,RequestMethod.GET} ) // 일정설정페이지
//	public String setCalendar(HttpServletRequest req, Model model,Param param) {
//		String cal_type = req.getParameter("cal_type");
//		model.addAttribute("cal_type",cal_type);
//		
//		return "schedule/setCalendar";
//	}
//	
//	@GetMapping("/setCalendarAdd") //일정설정 등록페이지 
//	public String setCalendarAdd() {
//		log.info("일정설정 등록페이지");
//		return "schedule/setCalendarAdd";
//	}
//	
//	
//
//	
//	/***************************************************************************************************************************************************/
//
//
//	@RequestMapping(value="/list" , method=RequestMethod.GET)
//	public ModelAndView AllListVieww(Map<String,Object> map) throws Exception{
//		ModelAndView mav = new ModelAndView();
//		
//		List<Map<String,Object>> list = scheService.SelectAllList();
//		log.info("list사이즈 : {} " , list.size() );
//		
//		
//		mav.addObject("list",list);
//		mav.setViewName("schedule/list");
//		return mav;
//	}
//	
//	@RequestMapping(value="/list2" , method=RequestMethod.GET)
//	   public String list(Map<String,Object>map, ModelMap model ) {
//		      try {
//				model.addAttribute("list",scheService.SelectAllList());
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		      return "schedule/list";
//	}
//	
//	@RequestMapping(value="/Insert" , method= {RequestMethod.POST, RequestMethod.GET})
//	public ModelAndView InsertPage(Map<String,Object> map) throws Exception{
//		ModelAndView mav = new ModelAndView();
//		
//		log.info("Insert페이지");
//		
//		
//		mav.setViewName("schedule/Insert");
//		return mav;
//	}
//
//	@RequestMapping(value="/InsertSave" , method= {RequestMethod.POST, RequestMethod.GET})
//	public String InsertSave(ModelMap model, HttpServletRequest request, HttpServletResponse response, 
//			HttpSession session, @RequestParam HashMap<String,Object> param) throws Exception{
//		scheService.Insert(param);
//		return "redirect:/list";
//		
//	}
//
//	
}
