package com.shop.board.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.shop.common.*;

import com.shop.board.BoardVO;
public class BoardDAO {
	// JDBC ���� ����
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	// SQL ��ɾ��
	private final String BOARD_INSERT = "insert into BoardTable (BoardTitle, BoardContent, BoardAuthor) values(?,?,?)";
	private final String BOARD_UPDATE = "update BoardTable set BoardTitle=?, BoardContent=? where BoardId=?";
	private final String BOARD_DELETE = "delete BoardTable where BoardId=?";
	private final String BOARD_GET = "select * from BoardTable where BoardId=?";
	private final String BOARD_LIST = "select * from BoardTable order by BoardId desc";

	// CRUD ����� �޼ҵ� ����
	// �� ���
	public void insertBoard(BoardVO vo) {
		System.out.println("===> JDBC�� insertBoard() ��� ó��");
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, vo.getBoardTitle());
			stmt.setString(2, vo.getBoardContent());
			stmt.setString(3, vo.getBoardAuthor());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}
	}

	// �� ����
	public void updateBoard(BoardVO vo) {
		System.out.println("===> JDBC�� updateBoard() ��� ó��");
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getBoardTitle());
			stmt.setString(2, vo.getBoardContent());
			stmt.setInt(3, vo.getBoardId());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}
	}

	// �� ����
	public void deleteBoard(BoardVO vo) {
		System.out.println("===> JDBC�� deleteBoard() ��� ó��");
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, vo.getBoardId());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}
	}

	// �� �� ��ȸ
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> JDBC�� getBoard() ��� ó��");
		BoardVO board = null;
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, vo.getBoardId());
			rs = stmt.executeQuery();
			if (rs.next()) {
				board = new BoardVO();
				board.setBoardId(rs.getInt("BoardId"));
				board.setBoardTitle(rs.getString("BoardTitle"));
				board.setBoardAuthor(rs.getString("BoardAuthor"));
				board.setBoardContent(rs.getString("BoardContent"));
				board.setBoardDate(rs.getDate("BoardDate"));
				board.setBoardHits(rs.getInt("BoardHits"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(conn, stmt, rs);
		}
		return board;
	}

	// �� ��� ��ȸ
	// 	private final String BOARD_LIST = "select * from board order by seq desc";
	
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("===> JDBC�� getBoardList() ��� ó��");
		List<BoardVO> boardList = new ArrayList<BoardVO>();
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_LIST);
			rs = stmt.executeQuery();
			while (rs.next()) {
				BoardVO board = new BoardVO();
				board.setBoardId(rs.getInt("BoardId"));
				board.setBoardTitle(rs.getString("BoardTitle"));
				board.setBoardAuthor(rs.getString("BoardAuthor"));
				board.setBoardContent(rs.getString("BoardContent"));
				board.setBoardDate(rs.getDate("BoardDate"));
				board.setBoardHits(rs.getInt("BoardHits"));
				boardList.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(conn, stmt, rs);
		}
		return boardList;
	}
}