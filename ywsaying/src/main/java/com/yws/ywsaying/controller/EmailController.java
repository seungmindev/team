package com.yws.ywsaying.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yws.ywsaying.service.MailService;

@Controller
public class EmailController {
	@Autowired
	MailService mailService;
	
	@RequestMapping(value="/emailAuthSend")
	@ResponseBody
	public boolean eamilAuthSend(@RequestParam String email, @RequestParam int random, HttpServletRequest req) {
		 
		//이메일 인증
		int ran = new Random().nextInt(900000)+ 100000;
		HttpSession session = req.getSession(true);
		String authCode= String.valueOf(ran);
		session.setAttribute("authCode", authCode);
		session.setAttribute("random", random);
		String subject = "회원가입 인증 코드 발급 안내입니다.";
		StringBuilder sb = new StringBuilder();
		sb.append("귀하의 인증코드는"+ authCode + "입니다.");
	
		return mailService.send(subject, sb.toString(), "YWSaying", email, null);
	}
	
	@RequestMapping(value="/emailAuth")
	public ResponseEntity<String> emailAuth(@RequestParam String authCode, @RequestParam String random, HttpSession session){
		String originalJoinCode = (String) session.getAttribute("authCode");
		String originalRandom = Integer.toString((int) session.getAttribute("random"));
		if(originalJoinCode.equals(authCode) && originalRandom.equals(random))
			return new ResponseEntity<String>("complete",HttpStatus.OK);
		
		else return new ResponseEntity<String>("false", HttpStatus.OK);		
		
	}
	
}
