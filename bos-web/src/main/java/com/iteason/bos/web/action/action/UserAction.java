package com.iteason.bos.web.action.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.iteason.bos.web.action.base.BaseAction;
import com.iteason.domain.User;
import com.iteason.service.UserService;
@Controller("userAction")
@Scope("prototype")
public class UserAction  {

	//private UserService userService;
	public String login(){
		System.out.println("testtesttesttesttesttest。。。。。。。。。。。。。。。。。。。。。");
		
		return "login";
		
	}
 
}
