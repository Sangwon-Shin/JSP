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










