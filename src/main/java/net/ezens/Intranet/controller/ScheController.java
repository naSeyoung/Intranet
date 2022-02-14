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
import net.ezens.Intranet.service.ScheService;

@Controller
@Slf4j
public class ScheController {
<<<<<<< HEAD
	
	@Autowired
	private ScheService scheService;
	
	@GetMapping("/ezenCalendar") //일정관리탭 - 월간일정
	public String ezenCalendar() {
		log.info("이젠캘린더 원본");
		log.info("이젠캘린더 원본");
		log.info("이젠캘린더 원본");
		return "schedule/ezenCalendar";
	}
	@GetMapping("/ezenCalendarTEST") //일정관리탭 - 월간일정
	public String ezenCalendarTEST() {
		log.info("ezenCalendarTEST");
		log.info("ezenCalendarTEST");
		log.info("ezenCalendarTEST");
		return "schedule/ezenCalendarTEST";
	}

	@GetMapping("/calendarAdd") //일정관리탭 - 일정등록
	public String calendarAdd() {
		log.info("일정등록페이지");
		return "schedule/calendarAdd";
	}

	@GetMapping("/detailCalendar") //일정상세페이지 
	public String detailCalender() {
		log.info("일정상세페이지");
		return "schedule/detailCalendar";
	}
	
	@GetMapping("/calendarModi") //일정수정페이지 
	public String calendarModi() {
		log.info("일정수정페이지");
		return "schedule/calendarModi";
	}
	
	@RequestMapping(value="/setCalendar", method= {RequestMethod.POST,RequestMethod.GET} ) // 일정설정페이지
	public String setCalendar(HttpServletRequest req, Model model,Param param) {
		String cal_type = req.getParameter("cal_type");
		model.addAttribute("cal_type",cal_type);
		
		return "schedule/setCalendar";
	}
	
	@GetMapping("/setCalendarAdd") //일정설정 등록페이지 
	public String setCalendarAdd() {
		log.info("일정설정 등록페이지");
		return "schedule/setCalendarAdd";
	}
	
	

	
	/***************************************************************************************************************************************************/


	@RequestMapping(value="/list" , method=RequestMethod.GET)
	public ModelAndView AllListVieww(Map<String,Object> map) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		List<Map<String,Object>> list = scheService.SelectAllList();
		log.info("list사이즈 : {} " , list.size() );
		
		
		mav.addObject("list",list);
		mav.setViewName("schedule/list");
		return mav;
	}
	
	@RequestMapping(value="/list2" , method=RequestMethod.GET)
	   public String list(Map<String,Object>map, ModelMap model ) {
		      try {
				model.addAttribute("list",scheService.SelectAllList());
			} catch (Exception e) {
				e.printStackTrace();
			}
		      return "schedule/list";
	}
	
	@RequestMapping(value="/Insert" , method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView InsertPage(Map<String,Object> map) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		log.info("Insert페이지");
		
		
		mav.setViewName("schedule/Insert");
		return mav;
	}

	@RequestMapping(value="/InsertSave" , method= {RequestMethod.POST, RequestMethod.GET})
	public String InsertSave(ModelMap model, HttpServletRequest request, HttpServletResponse response, 
			HttpSession session, @RequestParam HashMap<String,Object> param) throws Exception{
		scheService.Insert(param);
		return "redirect:/list";
		
	}

	
=======

	@Autowired
	private ScheService scheService;

	@RequestMapping(value = "/aTest", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView scheList(Map<String, Object> map) throws Exception {
		ModelAndView mav = new ModelAndView();

		List<Map<String, Object>> list = scheService.scheList();
		log.info("list사이즈 : {} ", list.size());

		mav.addObject("list", list);
		mav.setViewName("schedule/aTest");
		return mav;
	}

	@RequestMapping(value = "/calendarAdd", method = { RequestMethod.POST, RequestMethod.GET })
	public String calendarAdd() throws Exception {
		log.info("등록일정가보자");
		return "schedule/calendarAdd";
	}

	@RequestMapping(value = "/calendarAdded", method = { RequestMethod.POST, RequestMethod.GET })
	public String calendarAdded(ModelMap model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @RequestParam HashMap<String, Object> param) throws Exception {

		String cal_startDate = request.getParameter("cal_startDate");
		String cal_endDate = request.getParameter("cal_endDate");
		String cal_time1 = request.getParameter("cal_time1");
		String cal_time2 = request.getParameter("cal_time2");

		param.put("cal_startDate", "cal_startDate");
		param.put("cal_endDate", "cal_endDate");
		param.put("cal_time1", "cal_time1");
		param.put("cal_time2", "cal_time2");

		String calStDt = "";
		String calEdDt = "";

		calStDt = cal_startDate + cal_time1;
		calEdDt = cal_endDate + cal_time2;

		param.put("calStDt", "calStDt");
		param.put("calEdDt", "calEdDt");
		
		log.info("야아아악"+calStDt);
		log.info("야아아악"+calEdDt);

		scheService.insertSche(param);
		return "redirect:/aTest";

	}

	/* TEST */
	@GetMapping("/calendar") // 일정관리탭 - 월간일정
	public String calendar() {
		log.info("카렌더테스트");
		log.info("카렌더테스트");
		return "schedule/calendar";
	}

	/* TEST */
	@RequestMapping(value = "/test", method = { RequestMethod.POST, RequestMethod.GET })
	public String test(HttpServletRequest req, Model model, Param param) {
		String cal_title = req.getParameter("cal_title");
		String cal_content = req.getParameter("cal_content");
		String cal_place = req.getParameter("cal_place");
		String cal_sort = req.getParameter("cal_sort");
		String cal_openYN = req.getParameter("cal_openYN");
		String cal_startDate = req.getParameter("cal_startDate");
		String cal_endDate = req.getParameter("cal_endDate");
		String cal_time1 = req.getParameter("cal_time1");
		String cal_time2 = req.getParameter("cal_time2");
		model.addAttribute("cal_startDate", cal_startDate);
		model.addAttribute("cal_endDate", cal_endDate);
		model.addAttribute("cal_time1", cal_time1);
		model.addAttribute("cal_time2", cal_time2);
		model.addAttribute("cal_openYN", cal_openYN);
		model.addAttribute("cal_sort", cal_sort);
		model.addAttribute("cal_title", cal_title);
		model.addAttribute("cal_content", cal_content);
		model.addAttribute("cal_place", cal_place);

		return "schedule/test";
	}

	@GetMapping("/ezenCalendar") // 일정관리탭 - 월간일정
	public String ezenCalendar() {
		log.info("이젠캘린더 원본");
		log.info("이젠캘린더 원본");
		log.info("이젠캘린더 원본");
		return "schedule/ezenCalendar";
	}

	@GetMapping("/ezenCalendarTEST") // 일정관리탭 - 월간일정
	public String ezenCalendarTEST() {
		log.info("ezenCalendarTEST");
		log.info("ezenCalendarTEST");
		log.info("ezenCalendarTEST");
		return "schedule/ezenCalendarTEST";
	}

//	@GetMapping("/calendarAdd") //일정관리탭 - 일정등록
//	public String calendarAdd() {
//		log.info("일정등록페이지");
//		return "schedule/calendarAdd";
//	}

	@GetMapping("/detailCalendar") // 일정상세페이지
	public String detailCalender() {
		log.info("일정상세페이지");
		return "schedule/detailCalendar";
	}

	@GetMapping("/calendarModi") // 일정수정페이지
	public String calendarModi() {
		log.info("일정수정페이지");
		return "schedule/calendarModi";
	}

	@RequestMapping(value = "/setCalendar", method = { RequestMethod.POST, RequestMethod.GET }) // 일정설정페이지
	public String setCalendar(HttpServletRequest req, Model model, Param param) {
		String cal_type = req.getParameter("cal_type");
		model.addAttribute("cal_type", cal_type);

		return "schedule/setCalendar";
	}

	@GetMapping("/setCalendarAdd") // 일정설정 등록페이지
	public String setCalendarAdd() {
		log.info("일정설정 등록페이지");
		return "schedule/setCalendarAdd";
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

>>>>>>> branch 'master' of https://github.com/naSeyoung/Intranet.git
}
