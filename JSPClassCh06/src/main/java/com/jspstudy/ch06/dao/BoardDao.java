package com.jspstudy.ch06.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.jspstudy.ch06.vo.Board;

public class BoardDao {
	private static final String USER = "hr";
	private static final String PASS = "hr";
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public BoardDao() {
		// exception은 checked / unchecked 두 종류. 
		// 전자는 exception handling을 하지 않으면 컴파일 오류. 
		// Class.forName()은 checked exception
		try {
			// 1. 드라이버 로딩
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println("BoardDao() - ClassNotFoundException");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 게시글 쓰기 폼에서 입력된 데이터를 받아서 DB 테이블에 저장하는 메소드
	public void insertBoard(Board b) {
		String sqlInsert = "INSERT INTO "
				+ "jspbbs(no, title, writer, content, reg_date, read_count, pass, file1) "
				+ "VALUES(jspbbs_seq.NEXTVAL, ?, ?, ?, SYSDATE, 0, ?, ?)";
		
		try {
			conn = DriverManager.getConnection(URL, USER, PASS);
			pstmt = conn.prepareStatement(sqlInsert);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getWriter());
			pstmt.setString(3, b.getContent());
			pstmt.setString(4, b.getPass());
			pstmt.setString(5, b.getFile());
			
			pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("BoardDao - getBoard() : SQLException");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("BoardDao - getBoard() : non-SQLException");
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	// DB 테이블에서 no값에 대응되는 게시글 하나의 정보를 읽어와서 반환하는 메소드
	public Board getBoard(int no) {
		String sqlBoard = "SELECT * FROM jspbbs WHERE no=?";
		Board board = null;
		
		try {
			// 2. DB에 연결된 Connection 객체를 구함
			conn = DriverManager.getConnection(URL, USER, PASS);
			// 3. 쿼리를 발행해주는 PreparedStatement 객체를 구함
			pstmt = conn.prepareStatement(sqlBoard);
			// 4. 쿼리에 있는 placeholder(?) 값 설정
			pstmt.setInt(1, no);
			// 5. DB에 쿼리를 발행하고 결과 집합을 받음
			rs = pstmt.executeQuery();
			// 결과 집합에서 필요한 데이터를 추출 → Board 객체로 만듦
			if(rs.next()) {
				board = new Board();
				board.setNo(rs.getInt("no"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContent(rs.getString("content"));
				board.setRegDate(rs.getTimestamp("reg_date"));
				board.setReadCount(rs.getInt("read_count"));
				board.setPass(rs.getString("pass"));
				board.setFile(rs.getString("file1"));
			}
		
		} catch(SQLException e) {
			System.out.println("BoardDao - getBoard() : SQLException");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("BoardDao - getBoard() : non-SQLException");
			e.printStackTrace();
		} finally {
			// 6. DB에 사용한 객체를 닫는다. 객체를 구한 역순으로 닫는다.
			// rs - pstmt - conn 순으로
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return board;
	}
	// DB 테이블에서 게시글 리스트를 읽어와서 반환하는 메소드
	public ArrayList<Board> boardList(){
		String sqlBoardList = "SELECT * FROM jspbbs ORDER BY no DESC";
		ArrayList<Board> boardList = new ArrayList<Board>();
		// 2. DB Connection 객체  - 접속
		try {
			conn = DriverManager.getConnection(URL, USER, PASS);
			// 3. Connection 객체로부터 DB에 쿼리를 발행하는 PreparedStatement 객체를 구함
			pstmt = conn.prepareStatement(sqlBoardList);
			// 3.5 DB 입력 데이터 - 파라미터 설정
			
			// 4. 실제 DB에 쿼리 발행
			// SELECT - executeQuery() -> ResultSet 반환
			// INSERT, UPDATE, DELETE - executeUpdate() -> ResultSet 반환
			ResultSet rs = pstmt.executeQuery();
			// 5. ResultSet에 접근해서 데이터를 추출
			while(rs.next()){
				Board b = new Board();
				b.setNo(rs.getInt("no"));
				b.setTitle(rs.getString("title"));
				b.setWriter(rs.getString("writer"));
				b.setContent(rs.getString("content"));
				b.setRegDate(rs.getTimestamp("reg_date"));
				b.setReadCount(rs.getInt("read_count"));
				b.setFile(rs.getString("file1"));
				
				boardList.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. DB에 사용한 객체를 닫는다. 객체를 구한 역순으로 닫는다.
			// rs - pstmt - conn 순으로
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return boardList;
	}
}










