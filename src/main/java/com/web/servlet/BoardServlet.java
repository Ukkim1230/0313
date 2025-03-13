package com.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.web.dto.BoardDTO;
import com.web.service.BoardService;

@WebServlet(urlPatterns = "/board/*")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BoardService boardService = new BoardService();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		int idx = uri.lastIndexOf("/")+1;
		String cmd = uri.substring(idx);
		if("board-list".equals(cmd)) {
			String search = request.getParameter("search");
			String searchStr = request.getParameter("searchStr");
			Map<String, String> param = new HashMap<>();
			param.put("search", search);
			param.put("searchStr", searchStr);
			List<BoardDTO> boards = boardService.selectBoards(param);
			request.setAttribute("boards", boards);
			
		}else if ("board-view".equals(cmd) || "board-update".equals(cmd)){
			String biNumStr = request.getParameter("biNum");
			int biNum = Integer.parseInt(biNumStr);
			BoardDTO board = boardService.selectBoard(biNum);
			request.setAttribute("board", board);
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views" + uri + ".jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String uri = request.getRequestURI();
		int idx = uri.lastIndexOf("/")+1;
		String cmd = uri.substring(idx);
		BoardDTO board = new BoardDTO();
		try {
			BeanUtils.populate(board, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		if (board.getBiContent() == null || board.getBiContent().trim().isEmpty()) {
		    request.setAttribute("msg", "내용은 비워둘 수 없습니다.");
		    request.setAttribute("url", "/board/board-update?biNum=" + board.getBiNum());
		    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
		    rd.forward(request, response);
		    return;
		}

		System.out.println(board);
		
		String msg = "";
		String url = "/board/board-list";
		if("insert".equals(cmd)) {
			msg = "실패";
			if(boardService.insertBoard(board)==1) {
				msg = "성공";
			}
		} else if("update".equals(cmd)) {
			msg = "실패";
			if(boardService.updateBoard(board)==1) {
				msg = "성공";
			}
			url = "/board/board-view?biNum=" + board.getBiNum();
		} else if ("delete".equals(cmd)) {
			msg = "실패";
			if(boardService.deleteBoard(board.getBiNum()) == 1) {
				msg = "성공";
			}
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
		rd.forward(request, response);
	}

}
