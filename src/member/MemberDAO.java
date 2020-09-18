package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	private Connection conn;	 //�����ͺ��̽��� �����ϱ� ���� ��ü
	private PreparedStatement pstmt;
	private ResultSet rs;	//������ ��� ���� ��ü
	
	public MemberDAO() {
		try {
			String url = "jdbc:mysql://localhost:3306/getget?serverTimezone=UTC";	//LOCALHOST ���� ��ǻ���� ���
			String ID = "root";
			String Password = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, ID, Password);
		}catch(Exception e) {	//����ó��
			e.printStackTrace();	//������ ���� ���
		}
	}
	public int login(String id,String passwd) {
		String SQL = "select passwd from member where id =?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);	//�Ű������� �Ѿ� �� id�� ?�� �־��ִ� ��
			rs = pstmt.executeQuery();	//�������� ����
			if(rs.next()) { //����� �����Ѵٸ� 
				if(rs.getString(1).equals(passwd))	{//��� rs�� �����ͼ� passwd�� �������� ��
					return 1;
				}
				else {
					return 0;	
				}//��й�ȣ�� �ٸ�
			}
			return -1;	//���̵� ����				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //�����Ϳ���
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
