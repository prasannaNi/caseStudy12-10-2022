package com.example.caseStudy3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.caseStudy3.bean.CompanyShare;
import com.example.caseStudy3.repository.ShareRepository;

@Service
public class ShareService {
	@Autowired
	private ShareRepository repo;
	
	public void save(CompanyShare share) {
		repo.save(share);
	}
	
	public List<CompanyShare> findAll(){
		return repo.findAll();
	}
	
	public Long generateCourseId() {
		Long val = repo.findMaxCourseId();
		if(val == null)
			val = 1000001L;
		else
			val = val + 1;
		return val;
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public CompanyShare findById(Long id) {
		return repo.getById(id);
	}
}
