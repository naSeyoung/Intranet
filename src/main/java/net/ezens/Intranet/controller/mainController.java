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
		System.out.println("123213412421");
		
		
		return "index";
	}
	@RequestMapping("/sample-page")
	public String sample() {
		System.out.println("sample-page 이동 ");
		
		return "sample-page";
	}
}
