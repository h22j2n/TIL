package com.hw.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hw.frame.Biz;
import com.hw.vo.User;

@Controller
public class UserController {
	
	
	@Resource(name="userBiz")
	Biz<User,String> biz;
	
	@RequestMapping("/userlist.do")
	public String list(Model m) {
		//Database에서 데이터를 가지고 온다
		List<User> list=null;
		list = biz.get();
		
		m.addAttribute("userlist", list);
		m.addAttribute("center", "user/list"); // center는 userlist로 바껴라
		return "main";
	}

	@RequestMapping("/useradd.do")
	public String add(Model m) {
		m.addAttribute("center", "user/add"); // center는 userlist로 바껴라
		return "main";
	}
	@RequestMapping("/useraddimpl.do")
	public String addimpl(Model m,User u) {
		System.out.println("addimpl:" +m);
		m.addAttribute("center", "user/addok"); // center는 userlist로 바껴라
		return "main";
	}

}



