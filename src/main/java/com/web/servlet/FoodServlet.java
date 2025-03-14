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
import com.web.dto.FoodDTO;
import com.web.service.FoodService;


@WebServlet(urlPatterns = "/food/*")
public class FoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FoodService foodService = new FoodService();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = CommonCMD.getCmd(request);
		if("food-list".equals(cmd)) {
			List<FoodDTO> foods = foodService.selectFoods(null);
			request.setAttribute("foods", foods);
		}else if ("food-view".equals(cmd) || "food-update".equals(cmd)) {
			String fiNumStr = request.getParameter("fiNum");
			int fiNum = Integer.parseInt(fiNumStr);
			FoodDTO food = foodService.selectFood(fiNum);
			request.setAttribute("food", food);
		}
		CommonCMD.viewsforward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = CommonCMD.getCmd(request);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		FoodDTO food = new FoodDTO();
		try {
			BeanUtils.populate(food, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		String map = "";
		String url = "/food/food-list";
		
	}

}
