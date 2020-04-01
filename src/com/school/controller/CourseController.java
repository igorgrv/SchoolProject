package com.school.controller;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.school.dao.CourseDao;
import com.school.model.Course;

/**
 * 
 * @author igorg
 *
 */
@Controller
@Transactional
public class CourseController {

	@Autowired
	private CourseDao dao;
	
	@RequestMapping("/formCourse")
	public String formCourse () {
		return "course/formCourse";
	}
	
	@RequestMapping("/listCourse")
	public String listCourse (Model model) {
		model.addAttribute("courses", dao.list());
		return "course/listCourse";
	}
	
	@RequestMapping("addCourse")
	public String addCourse (@Valid Course course, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println(result.getFieldError("name").getDefaultMessage());
			return "forward: formCourse";
		}		
		dao.addCourse(course);
		return "redirect: listCourse";
	}
	
	@RequestMapping("removeCourse")
	public String removeCourse (Long id) {
		dao.remove(id);
		return "redirect: listCourse";
	}
	
	@RequestMapping("editCourse")
	public String editForm (Model model, Long id) {
		model.addAttribute("course", dao.getId(id));
		return "course/editForm";
	}
	
	@RequestMapping("updateCourse")
	public String updateCourse (Course course) {
		dao.updateCourse(course);
		return "redirect: listCourse" ;
	}
	
	@ResponseBody
	@RequestMapping("activeCourse")
	public void activeCourse (Long id) {
		dao.activeCourse(id);
	}
}
