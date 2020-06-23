package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	private static BoardDAO boardDAO = null;
	
	public static BoardDAO getInstance() {
		if (boardDAO == null) {
			boardDAO = new BoardDAO();
		}
		return boardDAO;
	}
	
	private BoardDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	private Connection getConnection() throws SQLException {
		return DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", "board", "board1234");
	}

	
	public List<BoardDTO> getBoardList() {
		List<BoardDTO> list = new ArrayList<>();

		StringBuffer sql = new StringBuffer();
		sql.append(" select no, title, name, regdate, readcount");
		sql.append(" from   t_board");
		sql.append(" order  by no desc");
		
		try (Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString())){

			try (ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					BoardDTO boardDTO = new BoardDTO();
					boardDTO.setNo(rs.getLong("no"));
					boardDTO.setTitle(rs.getString("title"));
					boardDTO.setName(rs.getString("name"));
					boardDTO.setRegdate(rs.getString("regdate"));
					boardDTO.setReadcount(rs.getInt("readcount"));
					list.add(boardDTO);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} 
		return list;
	}
	
	public BoardDTO getArticle(long no) {
		BoardDTO boardDTO = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select no, title, name, regdate, readcount, content");
		sql.append(" from   t_board");
		sql.append(" where  no=?");
		
		try (Connection conn = getConnection();
			PreparedStatement pstmt = 
				conn.prepareStatement(sql.toString())){
			pstmt.setLong(1, no);
			try (ResultSet rs = pstmt.executeQuery()) {
			
				if(rs.next()){
					boardDTO = new BoardDTO();
					boardDTO.setNo(rs.getLong("no"));
					boardDTO.setTitle(rs.getString("title"));
					boardDTO.setName(rs.getString("name"));
					boardDTO.setRegdate(rs.getString("regdate"));
					boardDTO.setReadcount(rs.getInt("readcount"));
					boardDTO.setContent(rs.getString("content"));
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return boardDTO;
	}
	
	public boolean insertBoard(BoardDTO boardDTO) {
		boolean result = false;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into t_board(no, title, name, passwd, content)");
		sql.append(" values(t_board_no_seq.nextval, ?, ?, ?, ?)");
		
		try (Connection conn = getConnection();
			PreparedStatement pstmt = 
				conn.prepareStatement(sql.toString())){
			
			pstmt.setString(1, boardDTO.getTitle());
			pstmt.setString(2, boardDTO.getName());
			pstmt.setString(3, boardDTO.getPasswd());
			pstmt.setString(4, boardDTO.getContent());
			if (pstmt.executeUpdate() > 0) {
				result = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} 
		return result;
	}
	
	public boolean updateBoard(BoardDTO boardDTO) {
		boolean result = false;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" update t_board set");
		sql.append("        name   = ?");
		sql.append("       ,title  = ?");
		sql.append("       ,content= ?");
		sql.append(" where  no = ?");
		sql.append(" and    passwd = ?");
		
		try (Connection conn = getConnection();
			PreparedStatement pstmt = 
				conn.prepareStatement(sql.toString())){

			pstmt.setString(1, boardDTO.getName());
			pstmt.setString(2, boardDTO.getTitle());
			pstmt.setString(3, boardDTO.getContent());
			pstmt.setLong(4, boardDTO.getNo());
			pstmt.setString(5, boardDTO.getPasswd());

			if (pstmt.executeUpdate() > 0) {
				result = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} 
		return result;
	}
	public boolean deleteBoard(BoardDTO boardDTO) {
		boolean result = false;

		StringBuffer sql= new StringBuffer();
		sql.append(" delete t_board");
		sql.append(" where  no = ?");
		sql.append(" and    passwd = ?");
		
		try (Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString())){
			
			pstmt.setLong(1, boardDTO.getNo());
			pstmt.setString(2, boardDTO.getPasswd());
			if(pstmt.executeUpdate() > 0) {
				result = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} 
		return result;
	}
}
