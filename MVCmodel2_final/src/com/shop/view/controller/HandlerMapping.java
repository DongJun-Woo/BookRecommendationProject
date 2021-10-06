package com.shop.view.controller;

import java.util.HashMap;
import java.util.Map;

import com.shop.view.user.LoginController;
import com.shop.view.user.LogoutController;


public class HandlerMapping {
	private Map<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/login.do", new LoginController());
		mappings.put("/logout.do", new LogoutController());		
	}

	public Controller getController(String path) {
		return mappings.get(path);
	}
}

