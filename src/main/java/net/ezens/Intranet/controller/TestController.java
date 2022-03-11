package net.ezens.Intranet.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import net.ezens.Intranet.dto.FileInfoDto;
import net.ezens.Intranet.dto.TestDto;
import net.ezens.Intranet.service.TestService;
import net.ezens.Intranet.util.FileUtil;
import net.ezens.Intranet.util.PropertyUtil;

@RestController
public class TestController { 
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	private String boardFilePath;
	private String apprFilePath;
	private String scheFilePath;

	private String FILE_LOCATION = "property/fileLocation.properties";
	
	private PropertyUtil flProp;
	
	public TestController() {
		flProp = new PropertyUtil(FILE_LOCATION);
		boardFilePath = flProp.get("board.file.path");
		apprFilePath = flProp.get("appr.file.path");
		scheFilePath = flProp.get("schedule.file.path");
	}
	
	@Autowired
	TestService TestService;
	
	@RequestMapping("/selectTest")
	public String selectTest() {
		String result = "";
		TestDto model = TestService.selectTest();
		result += model.toString();
		logger.info("result : " + result);
		return result;
	}
	
	@RequestMapping("/ultpg")
	public ModelAndView goUpLoadTestPage() {
		
		return new ModelAndView("test/testUpLoad");
	}
	
	@RequestMapping("/uploadTest")
	public String upLoadTest(MultipartHttpServletRequest ms) {
		
		FileUtil fu = new FileUtil();
		List<FileInfoDto> resultList = new ArrayList<>();
		
		//이미지 추가 메소드
		/* 특정 파라미터 지정 예시 */
		try {
//			resultLst = fu.saveFiles(ms.getFiles("files"), boardFilePath);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		/* 불특정 다수 파일 업로드 예시 */
		Map<String, List<MultipartFile>> fileMap = ms.getMultiFileMap();
		Iterator<String> mapKeys = ms.getFileNames();
		
		while(mapKeys.hasNext()) {
			String value = mapKeys.next();
			System.out.println(value);
			try {
				resultList.addAll(fu.saveFiles(fileMap.get(value), boardFilePath));
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		
		return resultList.toString();
	}
	
	@RequestMapping("/propTest")
	public String propTest() {
		String result = "";
		
		result += boardFilePath + " ";
		result += apprFilePath + " ";
		result += scheFilePath + " ";
		
		return result;
	}
}
