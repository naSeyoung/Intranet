package net.ezens.Intranet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	
	@RequestMapping("/intranet")
	public String main() {
		return "redirect:/ezenCalendar";
	}
	@RequestMapping("/daily-Schedule")
	public String dailySchedule() {
		System.out.println("일별 일정 페이지 이동 ");
		return "daily-Schedule.tiles";
	}
	@RequestMapping("/monthly-Schedule")
	public String monthlySchedule() {
		System.out.println("월별 일정 페이지 이동 ");
		return "monthly-Schedule.tiles";
	}
	@RequestMapping("/schedule-reg")
	public String schedulereg(){
		System.out.println("일정 등록 페이지 이동 ");
		
		return "schedule-reg.tiles";
	}
	
}
