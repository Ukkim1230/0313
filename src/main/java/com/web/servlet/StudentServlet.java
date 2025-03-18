package com.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.web.common.CommonCMD;
import com.web.dto.StudentDTO;
import com.web.service.CourseService;
import com.web.service.StudentService;


@WebServlet(urlPatterns = "/student/*")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentService studentService = new StudentService();
    private CourseService courseService = new CourseService();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = CommonCMD.getCmd(request);
		if("student-list".equals(cmd)) {
			List<StudentDTO> students = studentService.selectStudents(null);
			request.setAttribute("students", students);
	}else if ("student-view".equals(cmd) || "student-update".equals(cmd)) {
		int siNum = Integer.parseInt(request.getParameter("siNum"));
		StudentDTO student = studentService.selectStudent(siNum);
		request.setAttribute("student", student);
		}
		CommonCMD.viewsForward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String cmd = CommonCMD.getCmd(request);
		StudentDTO student = new StudentDTO();
		try {
			BeanUtils.populate(student, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		String url = "/student/student-list";
		String msg = "실패";
		if("insert".equals(cmd)) {
			if(studentService.insertStudent(student)==1) {
				msg = "성공";
			}
		}else if("update".equals(cmd)) {
			if(studentService.updateStudent(student)==1) {
				msg = "성공";
			}
		}else if ("delete".equals(cmd)) {
			if(studentService.deleteStudent(student.getSiNum())==1) {
				msg = "성공";
			}
		}
		request.setAttribute("url", url);
		request.setAttribute("msg", msg);
		CommonCMD.msgForward(request, response);
	}

}
