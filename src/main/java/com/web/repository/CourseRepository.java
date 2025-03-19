package com.web.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.web.common.CommonFactory;
import com.web.dto.CourseDTO;
import com.web.dto.DesktopDTO;

public class CourseRepository {

	public List<CourseDTO> selectCourses(CourseDTO course){
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.selectList("CourseMapper.selectCourses", course);
		}
	}

	public List<CourseDTO> selectCoursesBySiNum(int siNum) {
		try (SqlSession session = CommonFactory.getSSF().openSession()) {
			return session.selectList("CourseMapper.selectCoursesBySiNum", siNum);
		}
	}
	public CourseDTO selectCourse(int ciNum){
		try(SqlSession session = CommonFactory.getSSF().openSession()){
			return session.selectOne("CourseMapper.selectCourse", ciNum);
		}
	}

	public int insertCourse(CourseDTO course){
		try(SqlSession session = CommonFactory.getSSF().openSession(true)){
			return session.insert("CourseMapper.insertCourse", course);
		}
	}

	public int updateCourse(CourseDTO course){
		try(SqlSession session = CommonFactory.getSSF().openSession(true)){
			return session.update("CourseMapper.updateCourse", course);
		}
	}

	public int deleteCourse(int ciNum){
		try(SqlSession session = CommonFactory.getSSF().openSession(true)){
			return session.delete("CourseMapper.deleteCourse", ciNum);
		}
	}
}
