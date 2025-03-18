package com.web.service;

import java.util.List;
import java.util.Map;

import com.web.dto.GameDTO;
import com.web.dto.StudentDTO;
import com.web.repository.StudentRepository;

public class StudentService {
private StudentRepository studentRepo = new StudentRepository();
	
	public List<StudentDTO> selectStudents(Map<String,String> param){
		return studentRepo.selectStudents(param);
	}
	public StudentDTO selectStudent(int siNum) {
		return studentRepo.selectStudent(siNum);
	}
	public int insertStudent(StudentDTO student) {
		return studentRepo.insertStudent(student);
	}
	public int updateStudent(StudentDTO student) {
		return studentRepo.updateStudent(student);
	}
	public int deleteStudent(int siNum) {
		return studentRepo.deleteStudent(siNum);
	}

}
