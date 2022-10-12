package com.example.caseStudy3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.caseStudy3.bean.CompanyShare;
import com.example.caseStudy3.service.ShareService;

@RestController
public class ShareController {
	@Autowired
	private ShareService service;
	
	@GetMapping("index")
	public ModelAndView str() {
		ModelAndView mv = new ModelAndView("index");
		List<CompanyShare> shareList = service.findAll();
		mv.addObject("shareList",shareList);
		return mv;
	}
	
	@GetMapping("shareEntry")
	public ModelAndView showShareEntryPage() {
		CompanyShare share = new CompanyShare();
		ModelAndView mv = new ModelAndView("shareEntryPage");
		mv.addObject("shareRecord", share);
		return mv;
	}
	
	@PostMapping("share")
	public ModelAndView addNewShare(@ModelAttribute("shareRecord") CompanyShare share) {
		long id = service.generateCourseId();
		share.setCompanyId(id);
		service.save(share);
		return new ModelAndView("redirect:/index");
	}
	
	@GetMapping("deleteShare/{id}")
	public ModelAndView deleteACourse(@PathVariable long id) {
		service.delete(id);
		return new ModelAndView("redirect:/index");
	}
	
	@GetMapping("editShare/{id}")
	public ModelAndView showEditSharePage(@PathVariable long id) {
		CompanyShare share = service.findById(id);
		ModelAndView mv = new ModelAndView("shareEditPage");
		mv.addObject("shareRecord", share);
		return mv;
	}
	
	@PostMapping("editShare/shareEdit")
	public ModelAndView editCourse(@ModelAttribute("courseRecord") CompanyShare share) {
		service.save(share);
		return new ModelAndView("redirect:/index");
	}
}
