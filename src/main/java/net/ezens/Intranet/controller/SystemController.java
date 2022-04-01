package net.ezens.Intranet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.slf4j.Slf4j;
import net.ezens.Intranet.common.paging.PaginationInfo;
import net.ezens.Intranet.config.auth.PrincipalDetails;
import net.ezens.Intranet.constant.Method;
import net.ezens.Intranet.dto.SystemDto;
import net.ezens.Intranet.dto.UserDto;
import net.ezens.Intranet.service.SystemService;
import net.ezens.Intranet.service.UserService;
import net.ezens.Intranet.util.UiUtils;

@Controller
@Slf4j
public class SystemController {

	@Autowired
	SystemService systemService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	UiUtils uiUtils;

	// 회사관리
	@GetMapping("/system/companyInfo")
	public String companyList(HttpServletRequest httpServletRequest
			, HttpServletResponse httpServletResponse,
			@ModelAttribute SystemDto systemDto, ModelMap model
			, @AuthenticationPrincipal PrincipalDetails principalDetails ) {
		try {
//			 권한 설정 필요, 해당 회사만 접근 가능
			UserDto user = userService.selectUserInfo(principalDetails.getUser().getUserId());
			SystemDto companyInfo = systemService.getCompanyInfo(user.getCpInfoSeq());
			model.addAttribute("companyInfo", companyInfo);
//			log.info(user.getJoinCpDt());
		} catch (Exception e) {
			log.error("/system/companyInfo Exception : {}", e.getMessage());
			return e.getMessage();
		}
		return "system/company/companyInfo.tiles";
	}
	
	@GetMapping("/system/companyInsertForm")
	public String systemInsertCompanyForm() {
		return "system/company/companyInsertForm.tiles";
	}
	
	@GetMapping("/system/companyInsert")
	public String systemInsertCompany() {
		return "redirect:/system/companyList";
	}
	
	
	/*
	 * 부서관리
	 * 
	*/
	@GetMapping("/system/department/deptList")
	public String deptList(@ModelAttribute SystemDto systemDto, ModelMap model
			, @AuthenticationPrincipal PrincipalDetails principalDetails
			, RedirectAttributes redirectAttributes) {
		System.out.println("searchType:" + systemDto.getSearchType());
		System.out.println("searchType:" + systemDto.getSearchKeyword());
		PaginationInfo pageInfo = new PaginationInfo(systemDto, "REG_DT", "ASC");
		try {
			// 회원 정보
			UserDto user = userService.selectUserInfo(principalDetails.getUser().getUserId());
			systemDto.setCpInfoSeq(user.getCpInfoSeq());
			pageInfo.setTotalcount(systemService.selectDepartmentCnt(systemDto));
			
			// 부서 정보
			List list = systemService.selectDepartmentList(systemDto);
			
			model.addAttribute("list", list);
			model.addAttribute("pageInfo", pageInfo);
			
			redirectAttributes.addFlashAttribute("systemDto", systemDto);
		} catch (Exception e) {
			log.error("/system/department/deptList Exception : {}", e.getMessage());
			return e.getMessage();
		}
		
		return "system/department/deptList.tiles";
	}
	
	// 부서 insert Form
	@GetMapping("/system/department/deptInsertForm")
	public String deptInsertForm() {
		return "system/department/deptInsertForm.tiles";
	}
	
	// 부서 insert 
	@PostMapping("/system/department/insertDept")
	public String insertDepartment(HttpServletRequest httpServletRequest
			, HttpServletResponse httpServletResponse
			, @ModelAttribute SystemDto systemDto
			, Model model
			, RedirectAttributes redirectAttributes
			, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		
		try {
			UserDto user = userService.selectUserInfo(principalDetails.getUser().getUserId());
			systemDto.setCpInfoSeq(user.getCpInfoSeq());
			int result = systemService.insertDepartment(systemDto);
			if(result < 0) {
				return uiUtils.showMessageWithRedirect("게시글 등록에 실패하였습니다.", "/system/department/deptList", Method.GET, null, model);
			}
		} catch (Exception e) {
			log.error("/system/insertDepartment Exception : {}", e.getMessage());
			return e.getMessage();
		}
		return "redirect:/system/department/deptList";
	}
	
	// 부서 info 
	@GetMapping("/system/department/deptInfo")
	public String getDepartmentInfo(HttpServletRequest httpServletRequest , HttpServletResponse httpServletResponse
			, @ModelAttribute SystemDto systemDto
			, Model model
			, RedirectAttributes redirectAttributes) {
		
		try {
			SystemDto deptInfo = systemService.getDeptInfo(systemDto.getCpDeptSeq());
			model.addAttribute("deptInfo", deptInfo);
			redirectAttributes.addFlashAttribute("systemDto", systemDto);
		} catch (Exception e) {
			log.error("/system/insertDepartment Exception : {}", e.getMessage());
			return e.getMessage();
		}
		return "system/department/deptInfo.tiles";
	}
	
	
	//직책관리 position
	//사원관리
	//게시판관리

	
	@GetMapping("/user")
	public String user(@AuthenticationPrincipal User userInfo) {
		
		return "user";
	}
	
	@GetMapping("/admin")
	public @ResponseBody String admin() {
		return "admin";
	}
	
	@GetMapping("/manager")
	public @ResponseBody String manager() {
		return "manager";
	}
	
	
	
}
