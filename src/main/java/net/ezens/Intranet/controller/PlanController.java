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
		return "ezenCalendar";
	}
}
