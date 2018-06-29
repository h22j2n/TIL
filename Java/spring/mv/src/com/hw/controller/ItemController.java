package com.hw.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hw.vo.Item;
import com.hw.vo.User;

@Controller
public class ItemController {

	@RequestMapping("/itemlist.do")
	public String list(Model m) {
		//Database���� �����͸� ������ �´�
		ArrayList<Object> list=null;
		list = new ArrayList<>();
		list.add(new Item(01,"�ΰ�Ƽ",120000));
		list.add(new Item(02,"R8",18000));
		list.add(new Item(03,"��Ծ�",15000));
		list.add(new Item(04,"�Ѻ�����",30000));
		list.add(new Item(05,"BMW",13000));
		m.addAttribute("itemlist", list);
		m.addAttribute("center","item/list");
		return "main";
	}

	@RequestMapping("/itemadd.do")
	public String add(Model m) {
		m.addAttribute("center", "item/add"); // center�� userlist�� �ٲ���
		return "main";
	}
	@RequestMapping("/itemaddimpl.do")
	public String addimpl(Model m,User u) {
		System.out.println("addimpl:" +m);
		m.addAttribute("center", "item/addok"); // center�� userlist�� �ٲ���
		return "main";
	}

}



