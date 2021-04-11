package kr.hs.mirimmarket.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;
import kr.hs.mirimmarket.common.DBconnect;
import kr.hs.mirimmarket.user.User;

@Repository("UserDAO")
public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	

	  public int Join(User user) { 
		  try { 
			  conn=DBconnect.getConnection();
			  String SQL="INSERT INTO Member1 VALUES(?,?,?,?,?,?,?)";
			  pstmt=conn.prepareStatement(SQL); 
			  pstmt.setString(1, user.getID());
			  pstmt.setString(2, user.getPassword());
			  pstmt.setString(3, user.getName()); 
			  pstmt.setString(4, user.isStudent());
			  pstmt.setString(5, user.getMajor()); 
			  pstmt.setString(6, user.getAge());
			  pstmt.setString(7, user.getPhone()); 
			  return pstmt.executeUpdate();
		  }catch(Exception e) {
			  e.printStackTrace(); 
		  }finally {
				 try {pstmt.close();}catch(SQLException e) {}
				 try {conn.close();}catch(SQLException e) {}
		}
		  return -1; 
	}
	  
//	 public boolean confirmId(String id) {
//		 boolean result=false;
//		 try {
//			 conn=DBconnect.getConnection();
//			 String SQL="select id from member1 where id=?";
//			 pstmt=conn.prepareStatement(SQL);
//			 pstmt.setString(1, id);
//			 rs=pstmt.executeQuery();
//			 if(rs.next()) {
//				 result=true;
//			 }
//		 }catch(Exception e) {
//			 e.printStackTrace();
//		 }finally {
//			 try {rs.close();}catch(SQLException e) {}
//			 try {pstmt.close();}catch(SQLException e) {}
//			 try {conn.close();}catch(SQLException e) {}
//		 }
//		 return result;
//	 }
//	public User Login(String id,String password) {
//		User user=null;
//		 try {
//			 String SQL = "SELECT * FROM member1 WHERE id=?";
//			 pstmt=conn.prepareStatement(SQL);
//			 pstmt.setString(1, id);
//			 rs=pstmt.executeQuery();
//			 if(rs.next()) {
//				 if(password.equals(rs.getString(2))) {
//					 user=new User();
//					 user.setID("id");
//					 user.setPassword("password");
//					 user.setName("name");
//					 user.setStudent("isStudent");
//					 user.setMajor("major");
//					 user.setAge("age");
//					 user.setPhone("phone");
//				 }else {  // ��й�ȣ�� Ʋ��
//					 
//				 }
//			 }else {  // ���̵� ����
//				 
//			 }
//		 }catch(Exception e) {
//			 e.printStackTrace();
//		 }
//		 return user;
//	}
}
