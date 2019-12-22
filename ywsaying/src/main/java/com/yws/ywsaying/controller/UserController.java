package com.yws.ywsaying.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.yws.ywsaying.dto.User;
import com.yws.ywsaying.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@GetMapping(path="/main")
	public String main() {
		return "main";
	}
	
	@GetMapping(path="/list")
	public String list(@RequestParam(name="start", required=false, defaultValue="0") int start, 
			   				ModelMap model) {
		//start로 시작하는 방명록 목록 구하기
		List<User> list = userService.getUsers(start);
		
		//전체페이지수 구하기 
		int count = userService.getCount();
		int pageCount = count / userService.LIMIT;
		if(count % UserService.LIMIT > 0)
			pageCount++;
		
		//페이지 수 만큼 start의 값을 리스트로 저장
		//예를 들면 페이지수가 3이면
		//0,5,10 이렇게 저장된다.
		//list?start=0, list?start=5, list?start=10 으로 링크가 걸린다.
		List<Integer> pageStartList = new ArrayList<>();
		for(int i = 0 ; i<pageCount ; i++) {
			pageStartList.add(i * userService.LIMIT);
		}
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("pageStartList", pageStartList);
	
		return "list";
	}
	
	//회원가입 페이지
	@GetMapping(path="/signUp")
	public String signUp(ModelMap model) {
		
		int ran = new Random().nextInt(900000)+ 100000;
		model.addAttribute("random", ran);	
		return "signUp";
	}
	
	//회원가입 후 로그인페이지
	@PostMapping(path="/signUpping")
	public String signUpping(@ModelAttribute User user,
						HttpServletRequest request) {
		
		
		String clientIp = request.getRemoteAddr();
		System.out.println("clientIp:" + clientIp);
		System.out.println(user);
		userService.addUser(user, clientIp);
		
		return "signIn";				
	}
	
	
	
	
	
}
