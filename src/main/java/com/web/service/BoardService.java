package com.web.service;

import java.util.List;
import java.util.Map;

import com.web.dto.BoardDTO;
import com.web.repository.BoardRepository;

public class BoardService {
	private BoardRepository boardRepo = new BoardRepository();
	
	public List<BoardDTO> selectBoards(Map<String,String> param){
		return boardRepo.selectBoards(param);
	}
	public BoardDTO selectBoard(int biNum) {
		return boardRepo.selectBoard(biNum);
	}
	public int insertBoard(BoardDTO board) {
		return boardRepo.insertBoard(board);
	}
	public int updateBoard(BoardDTO board) {
		return boardRepo.updateBoard(board);
	}
	public int deleteBoard(int biNum) {
		return boardRepo.deleteBoard(biNum);
	}
}
