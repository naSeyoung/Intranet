package net.ezens.Intranet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {

	@GetMapping("/intranet")
	public String main() {
		System.out.println("화면 나와라");
		System.out.println("화면 나와라");
		System.out.println("화면 나와라");
		System.out.println("화면 나와라");
		System.out.println("화면 나와라");
		System.out.println("화면 나와라");
		System.out.println("화면 나와라");
		System.out.println("화면 나와라");
		return "index";
	}
	@RequestMapping("/daily-Schedule")
	public String sample2() {
		System.out.println("일별 일정 페이지 이동 ");
		return "daily-Schedule";
	}
	@RequestMapping("/monthly-Schedule")
	public String sample() {
		System.out.println("월별 일정 페이지 이동 ");
		
		return "monthly-Schedule";
	}
	
}
