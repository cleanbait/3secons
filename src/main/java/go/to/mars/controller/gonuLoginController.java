package go.to.mars.controller;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.extern.slf4j.Slf4j;

	@Slf4j // 이것도 롬복 기능
	@Controller
	public class gonuLoginController {
		
		@RequestMapping(value = "kimgunu/login", method = RequestMethod.GET)
		public String login() {
				return "kimgunu/login";
				
		}
		
		@RequestMapping(value = "kimgunu/idFind", method = RequestMethod.GET)
		public String idFind() {
				return "kimgunu/idFind";
				
		}
		
		@RequestMapping(value = "kimgunu/orderInquiry", method = RequestMethod.GET)
		public String orderInquiry() {
				return "kimgunu/orderInquiry";
				
		}
		
		@RequestMapping(value = "kimgunu/signUp", method = RequestMethod.GET)
		public String signUp() {
				return "kimgunu/signUp";
				
		}
		
		@RequestMapping(value = "kimgunu/test", method = RequestMethod.GET)
		public String test() {
				return "kimgunu/test";
				
		}
		
	}
