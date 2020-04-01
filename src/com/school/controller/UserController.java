package com.school.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.dao.UserDao;
import com.school.model.User;

@Controller
public class UserController {

	@Autowired
	private UserDao dao;
	
	@RequestMapping("loginForm")
	public String loginForm () {
		return "loginForm";
	}
	
	@RequestMapping("logIn")
	public String logIn (@Valid User user,BindingResult result, HttpSession session) {
		if(result.hasErrors()) {
			return "forward:loginForm";
		}
		if (dao.existeUser(user)) {
			session.setAttribute("userLogged", user);
			return "index";
		} 		
		return "redirect: loginForm";
	}
	
	@RequestMapping("index")
	public String returnIndex () {
		return "index";
	}
	
	@RequestMapping("logOut")
	public String logOut (HttpSession session) {
		session.invalidate();
		return "redirect: loginForm";
	}
}
