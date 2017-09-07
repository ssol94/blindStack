package com.ldcc.overflow;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ldcc.overflow.model.LoginData;

import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@RequestMapping(method= RequestMethod.GET)
	public String viewLogin(Model model){
		//String cookieID;
		//boolean checked;
		
	//	model.addAttribute("userID", cookieID);
		return "login";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String btnLogin(@ModelAttribute("ansData") LoginData data) {		
		
		return "loginresult";
	}
	
}
