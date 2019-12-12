package org.stjude.cloud.hackathon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.stjude.cloud.hackathon.service.ConstituentService;

@RestController
@RequestMapping("/hackathon")
public class ConstituentController {
	
	@Autowired
	private ConstituentService constituentService;
	
	@GetMapping("/test")
	public String test() {
		
		return constituentService.demo();
	}

}
