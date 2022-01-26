package net.ezens.Intranet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	@GetMapping("/hi") //일정관리탭 - 일정등록
	public String hi() {
		log.info("hi페이지");
		return "plan/hi";
	}
	
	
}
