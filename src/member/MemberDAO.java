package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	private Connection conn;	 //데이터베이스에 접근하기 위한 객체
	private PreparedStatement pstmt;
	private ResultSet rs;	//정보를 담기 위한 객체
	
	public MemberDAO() {
		try {
			String url = "jdbc:mysql://localhost:3306/getget?serverTimezone=UTC";	//LOCALHOST 본인 컴퓨터의 디비
			String ID = "root";
			String Password = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, ID, Password);
		}catch(Exception e) {	//예외처리
			e.printStackTrace();	//오류가 뭔지 출력
		}
	}
	public int login(String id,String passwd) {
		String SQL = "select passwd from member where id =?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);	//매개변수로 넘어 온 id를 ?에 넣어주는 것
			rs = pstmt.executeQuery();	//실행결과를 넣음
			if(rs.next()) { //결과가 존재한다면 
				if(rs.getString(1).equals(passwd))	{//결과 rs를 가져와서 passwd와 동일한지 비교
					return 1;
				}
				else {
					return 0;	
				}//비밀번호가 다름
			}
			return -1;	//아이디가 없다				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터오류
	}
	
	public int join(Member member) {
		String SQL ="insert into member (id,passwd,name,phoneNumber) values(?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,member.getId());
			pstmt.setString(2,member.getPasswd());
			pstmt.setString(3,member.getName());
			pstmt.setString(4,member.getPhoneNumber());
			return pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
			}
		return -1;
	}

}
