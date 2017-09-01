package com.ldcc.eunsol.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SampleController4 {
	private static final Logger logger = LoggerFactory.getLogger(SampleController4.class);
	
	@RequestMapping("/doE")
	public String doE(RedirectAttributes rttr) {
		logger.info("doE start");
		
		rttr.addFlashAttribute("msg2", "message!!@"); //("msg2", "message!!");
		return "redirect:/doF";
	}
	
	@RequestMapping("/doF")
	public void doF(@ModelAttribute String msg2) {
		logger.info("doF message : " + msg2);
	}
}
