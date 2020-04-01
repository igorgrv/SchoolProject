package com.school.dao;

import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.school.model.Course;

@Repository
public class CourseDao {

	@PersistenceContext
	private EntityManager manager;
	
	public void addCourse (Course course) {
		course.setRegisterDate(Calendar.getInstance());
		manager.persist(course);
	}
	
	public void updateCourse (Course course) {
		manager.merge(course);
	}
	
	public Course getId (long id) {
		return manager.find(Course.class, id);
	}
	
	public void remove (long id) {
		Course course = getId(id);
		manager.remove(course);
	}
	
	@SuppressWarnings("unchecked")
	public List<Course> list (){
		return manager.createQuery("SELECT c FROM Course as c").getResultList();
	}
	
	public void activeCourse (Long id) {
		Course course = getId(id);
		course.setActive(true);
		manager.merge(course);
	}
	
}
