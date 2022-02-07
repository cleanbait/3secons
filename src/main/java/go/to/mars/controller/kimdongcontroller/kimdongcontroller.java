package go.to.mars.controller.kimdongcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class kimdongcontroller {
	
	@RequestMapping(value = "kimdongju/purchase", method = RequestMethod.GET)
	public String purchase() {
		return "kimdongju/purchase";
	}
	
	@RequestMapping(value = "kimdongju/hamberger", method = RequestMethod.GET)
	public String hamberger() {
		return "kimdongju/hamberger";
	}
}
