package com.web.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.web.common.CommonFactory;
import com.web.dto.CpuDTO;
import com.web.dto.StudentDTO;

public class StudentRepository {
	public List<StudentDTO> selectStudents(Map<String, String> param) {
		try (SqlSession session = CommonFactory.getSSF().openSession()) {
			return session.selectList("StudentMapper.selectStudents", param);
		}
	}

	public StudentDTO selectStudent(int siNum) {
		try (SqlSession session = CommonFactory.getSSF().openSession()) {
			return session.selectOne("StudentMapper.selectStudent", siNum);
		}
	}

	public int insertStudent(StudentDTO student) {
		try (SqlSession session = CommonFactory.getSSF().openSession(true)) {
			return session.insert("StudentMapper.insertStudent", student);
		}
	}

	public int updateStudent(StudentDTO student) {
		try (SqlSession session = CommonFactory.getSSF().openSession(true)) {
			return session.update("StudentMapper.updateStudent", student);
		}
	}

	public int deleteStudent(int siNum) {
		try (SqlSession session = CommonFactory.getSSF().openSession(true)) {
			return session.delete("StudentMapper.deleteStudent", siNum);
		}
	}
	public static void main(String[] args) {
		StudentRepository studentRepo = new StudentRepository();
		System.out.println(studentRepo.selectStudent(1));
	}
}