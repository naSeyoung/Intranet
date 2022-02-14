package net.ezens.Intranet.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.ezens.Intranet.dto.TestModel;
import net.ezens.Intranet.service.TestService;
import net.ezens.Intranet.util.FileUtil;

@RestController
public class TestController { 
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@Autowired
	TestService TestService;
	
	@RequestMapping("/selectTest")
	public String selectTest() {
		String result = "";
		TestModel model = TestService.selectTest();
		result += model.toString();
		logger.info("result : " + result);
		return result;
	}
	
	@RequestMapping
	public String upLoadTest(MultipartHttpServletRequest ms) {
		
		String localPath = "/resources/thumbnail/";
		
		//post 파라미터
		MultipartFile mfile = ms.getFile("file");
		
		//이미지 추가 메소드
		FileUtil fu = new FileUtil();
		String fileName = "";
		try {
			fileName = fu.saveFile(mfile, localPath);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return localPath+fileName;
	}
}
