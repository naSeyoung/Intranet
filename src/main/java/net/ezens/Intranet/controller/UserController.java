package net.ezens.Intranet.controller;

import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.ezens.Intranet.common.paging.PaginationInfo;
import net.ezens.Intranet.config.auth.AuthFailureHandler;
import net.ezens.Intranet.config.security.CustomPasswordEncoding;
import net.ezens.Intranet.dto.UserDto;
import net.ezens.Intranet.service.UserService;

@RequiredArgsConstructor
@Slf4j
@Controller
public class UserController {

//	private final CheckUserIdValidator checkUserIdValidator;
//
//	@InitBinder // 특정 컨트롤러에서 바인딩 또는 검증 설저을 변경하고 싶을 때 사용
//	public void validatorBinder(WebDataBinder binder) {
//		//webdatabinder : http 요청정보를 컨트롤러 메소드의 파라미터나 모델에 바인딩할 때 사용되는 바인딩 객체
//		binder.addValidators(checkUserIdValidator);
//	}

	@Autowired
	UserService userService;
	
	@Autowired
	AuthFailureHandler authFailureHandler;

	@GetMapping("/join")
	public String join(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "exception", required = false) String exception, Model model) {
		model.addAttribute("error", error);
		model.addAttribute("exception", exception);
		return "user/joinForm.tiles";
	}

	/**
	 * 회원가입
	 * @param userDto
	 * @param errors
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/joinProc")
	public String joinProc(@Valid UserDto userDto, Errors errors, Model model) throws Exception {
		try {
			// 파라미터 유효성검사 https://dev-coco.tistory.com/123
//			if (errors.hasErrors()) {
//				model.addAttribute("userDto", userDto);
//				/* 유효성 통과 못한 필드와 메시지를 핸들링 */
//				Map<String, String> validatorResult = userService.validateHandling(errors);
//				for (String key : validatorResult.keySet()) {
//					model.addAttribute(key, validatorResult.get(key));
//				}
//				return "user/joinForm";
//			}
			
			UserDto userInfo = userService.selectUserInfo(userDto.getUserId());
			
			if(userInfo != null) {
				String errorMessage = "중복된 아이디입니다.";
				errorMessage = URLEncoder.encode(errorMessage, "UTF-8");
				return "redirect:/join?error=true&exception=" + errorMessage;
			}

			int success = userService.insertUser(userDto);
			if(success < 0){
				String errorMessage = "회원가입에 실패했습니다. 관리자에 문의해주세요.";
				errorMessage = URLEncoder.encode(errorMessage, "UTF-8");
				return "redirect:/join?error=true&exception=" + errorMessage;
			}

		} catch (Exception e) {
			log.info(e.getMessage());
		}
		return "redirect:/loginForm";
	}

	
	/**
	 * 로그인 페이지
	 * @param error
	 * @param exception
	 * @param model
	 * @return
	 */
	@GetMapping("/loginForm")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "exception", required = false) String exception, Model model) {
		model.addAttribute("error", error);
		model.addAttribute("exception", exception);
		return "user/loginForm.tiles";
	}

	@GetMapping("/loginProc")
	public String loginProc() {
		return "loginProc";
	}

	/**
	 * 직원 리스트
	 * @param request
	 * @param userDto
	 * @param redirectAttributes
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@GetMapping("/system/user/userList")
	public String openUserList(HttpServletRequest request, @ModelAttribute("userDto") UserDto userDto,
			RedirectAttributes redirectAttributes, ModelMap model) throws Exception {
		PaginationInfo pageInfo = new PaginationInfo(userDto, "REG_DT", "ASC");
		try {
			userDto.setCpInfoSeq("1");
			pageInfo.setTotalcount(userService.getUserListCnt(userDto));
			List list = userService.getUserList(userDto);
			model.addAttribute("list", list);
			model.addAttribute("pageInfo", pageInfo);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "user/userList";
	}

}
