package com.spring.view;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.spring.biz.SampleService;

@Controller
public class SampleController {
	@Resource(name = "sampleService")
	SampleService service;
	
	@RequestMapping(value = "/sample.do")
	public String sample() {
		return "sample";
	}
	@RequestMapping(value = "/sample2.do")
	public String sample2() {
		return "sample2";
	}
	@RequestMapping(value = "/sample3.do")
	public String sample3() {
		return "sample3";
	}
	
	@RequestMapping(value = "/sample4.do")
	public String sample4() {
		return "sample4";
	}
}










