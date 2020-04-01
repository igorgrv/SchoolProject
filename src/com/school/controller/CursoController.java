package com.school.controller;



import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fj21review.dao.CursoDao;
import com.fj21review.modelo.Cursos;

@Controller
@Transactional
public class CursoController {

	@Autowired
	private CourseDao dao;
	
	@RequestMapping("/formCurso")
	public String formCurso () {
		return "curso/formCurso";
	}
	
	@RequestMapping("/listCurso")
	public String listCurso (Model model) {
		model.addAttribute("curso", dao.list());
		return "curso/listCurso";
	}
	
	@RequestMapping("addCurso")
	public String addCurso (@Valid Cursos curso, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println(result.getFieldError("nome").getDefaultMessage());
			return "forward: formCurso";
		}		
		dao.addCurso(curso);
		return "redirect: listCurso";
	}
	
	@RequestMapping("removeCurso")
	public String removeCurso (Long id) {
		dao.remove(id);
		return "redirect: listCurso";
	}
	
	@RequestMapping("editCurso")
	public String editForm (Model model, Long id) {
		model.addAttribute("curso", dao.getId(id));
		return "curso/editForm";
	}
	
	@RequestMapping("updateCurso")
	public String updateCurso (Cursos curso) {
		dao.updateCurso(curso);
		return "redirect: listCurso" ;
	}
	
	@ResponseBody
	@RequestMapping("ativaCurso")
	public void ativaCurso (Long id) {
		dao.ativaCurso(id);
	}
}
