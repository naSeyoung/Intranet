package net.ezens.Intranet.util;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import net.ezens.Intranet.constant.Method;

@Controller
public class UiUtils {

	public String showMessageWithRedirect(@RequestParam(value = "message", required = false) String message,
			@RequestParam(value = "redirectUri", required = false) String redirectUri,
			@RequestParam(value = "method", required = false) Method method,
			@RequestParam(value = "params", required = false) Map<String, Object> params, Model model) {

		System.out.println("message"+ message);
		System.out.println("redirectUri"+ redirectUri);
		System.out.println("method"+ method);
		System.out.println("params"+ params);

		model.addAttribute("message", message);
		model.addAttribute("redirectUri", redirectUri);
		model.addAttribute("method", method);
		model.addAttribute("params", params); //map

		return "/utils/message-redirect";
	}
}
