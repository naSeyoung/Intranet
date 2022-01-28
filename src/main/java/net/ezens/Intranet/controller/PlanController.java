package net.ezens.Intranet.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PlanController {
	
	@GetMapping("/ezenCalendar") //일정관리탭 - 월간일정
	public String ezenCalendar() {
		log.info("이젠캘린더 띄우기 성공");
		log.info("이젠캘린더 띄우기 성공");
		log.info("이젠캘린더 띄우기 성공");
		return "plan/ezenCalendar";
	}

	@GetMapping("/addCalendar") //일정관리탭 - 일정등록
	public String addCalender() {
		log.info("일정등록페이지");
		return "plan/addCalendar";
	}


	@RequestMapping(value="/test", method=RequestMethod.POST)
	public String test(HttpServletRequest req, Model model,Param param) {
		String cal_title = req.getParameter("cal_title");
		String cal_content = req.getParameter("cal_content");
		String cal_place = req.getParameter("cal_place");
		String cal_sort = req.getParameter("cal_sort");
		String cal_openYN = req.getParameter("cal_openYN");
		String cal_startDate = req.getParameter("cal_startDate");
		String cal_endDate = req.getParameter("cal_endDate");
		String cal_time1 = req.getParameter("cal_time1");
		String cal_time2 = req.getParameter("cal_time2");
		String hihi = req.getParameter("hihi");
		model.addAttribute("hihi",hihi);
		model.addAttribute("cal_startDate",cal_startDate);
		model.addAttribute("cal_endDate",cal_endDate);
		model.addAttribute("cal_time1",cal_time1);
		model.addAttribute("cal_time2",cal_time2);
		model.addAttribute("cal_openYN",cal_openYN);
		model.addAttribute("cal_sort",cal_sort);
		model.addAttribute("cal_title",cal_title);
		model.addAttribute("cal_content",cal_content);
		model.addAttribute("cal_place",cal_place);
		
		return "plan/test";
	}
	
}
