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
	
	@RequestMapping(value = "/sample5.do")
	public String sample5() {
		return "sample5";
	}
	
	@RequestMapping(value = "/sample6.do")
	public String sample6() {
		return "sample6";
	}
	
	@RequestMapping(value = "/sample7.do")
	public String sample7() {
		return "sample7";
	}
	
	@RequestMapping(value = "/sample8.do")
	public String sample8() {
		return "sample8";
	}
}










