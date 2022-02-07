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

	@GetMapping("/detailCalendar") //일정상세페이지 
	public String detailCalender() {
		log.info("일정상세페이지");
		return "plan/detailCalendar";
	}
	
	@GetMapping("/updateCalendar") //일정수정페이지 
	public String updateCalendar() {
		log.info("일정수정페이지");
		return "plan/updateCalendar";
	}
	
	@RequestMapping(value="setCalendar", method= {RequestMethod.POST,RequestMethod.GET} ) // 일정설정페이지
	public String setCalendar(HttpServletRequest req, Model model,Param param) {
		String cal_type = req.getParameter("cal_type");
		model.addAttribute("cal_type",cal_type);
		
		return "plan/setCalendar";
	}
	
	@GetMapping("/addSetCalendar") //일정설정 등록페이지 
	public String addSetCalendar() {
		log.info("일정설정 등록페이지");
		return "plan/addSetCalendar";
	}
	
	



	
}
