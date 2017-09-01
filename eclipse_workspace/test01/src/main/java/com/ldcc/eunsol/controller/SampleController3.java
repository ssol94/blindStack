package com.ldcc.eunsol.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ldcc.eunsol.domain.ProductVO;

@Controller
public class SampleController3 {

	private static final Logger logger = LoggerFactory.getLogger(SampleController3.class);
	
	@RequestMapping("/doD")
	public String doD(Model model) {
		
		ProductVO productVO = new ProductVO("세상에서 제일 맛있는 사과", 50000);
		
		logger.info("doD");
		
		model.addAttribute(productVO);
		
		return "productDetail";
	}
}
