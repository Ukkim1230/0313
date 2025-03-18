package com.web.service;

import java.util.List;

import com.web.dto.CourseDTO;
import com.web.repository.CourseRepository;

public class CourseService {
	private CourseRepository courseRepo = new CourseRepository();
	
	public List<CourseDTO> selectCourses(CourseDTO course){
		return courseRepo.selectCourses(course);
	}
	public CourseDTO selectCourse(int ciNum) {
		return courseRepo.selectCourse(ciNum);
	}
	public int insertCourse(CourseDTO course) {
		return courseRepo.insertCourse(course);
	}
	public int updateCourse(CourseDTO course) {
		return courseRepo.updateCourse(course);
	}
	public int deleteCourse(int ciNum) {
		return courseRepo.deleteCourse(ciNum);
	}
}
