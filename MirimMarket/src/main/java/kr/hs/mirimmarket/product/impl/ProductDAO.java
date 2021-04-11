package kr.hs.mirimmarket.product.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import kr.hs.mirimmarket.common.DBconnect;
import kr.hs.mirimmarket.product.Product;


@Repository("ProductDAO")
public class ProductDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public String getDate() {
		String SQL = "SELECT NOW()";	
		try {
			conn=DBconnect.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";	
	}
	public int getNext() {
		String SQL = "SELECT seq FROM register2 ORDER BY seq DESC";
		try {
			conn=DBconnect.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
				return rs.getInt(1) + 1;
			}
			return 1;	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;	
	}
	
	public int RegisterProduct(String name,String title, String category,String grade, String state, String image,String explanation,String price, String quantity, String isAnony) {
		Product product=new Product();
		try {
			conn=DBconnect.getConnection();
			String SQL = "INSERT INTO register2 (seq,userName,title, category, grade, state, image, explanation, price, quantity, isAnony,click,date) "
					+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, name);
			pstmt.setString(3, title);
			pstmt.setString(4, category);
			pstmt.setString(5, grade);
			pstmt.setString(6, state);
			pstmt.setString(7, image);
			pstmt.setString(8, explanation);
			pstmt.setString(9, price);
			pstmt.setString(10, quantity);
			pstmt.setString(11, isAnony);
			pstmt.setInt(12, 0);
			pstmt.setString(13, getDate());
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;

	}
	
	public Product GetProduct(Product p) {   // 타이틀로 확인하기
		Product product=null;
		try {
			conn=DBconnect.getConnection();
			String SQL="select * from register2 where seq=?";
			pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1, p.getSeq());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				product=new Product();
				product.setSeq(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setTitle(rs.getString(3));
				product.setCategory(rs.getString(4));
				product.setGrade(rs.getString(5));
				product.setState(rs.getString(6));
				
				product.setExplaination(rs.getString(8));
				product.setPrice(rs.getString(9));
				product.setQuantity(rs.getString(10));
				product.setIsAnony(rs.getString(11));
				product.setClick(rs.getString(12));
				product.setDate(rs.getDate(13));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			 try {rs.close();}catch(SQLException e) {}
			 try {pstmt.close();}catch(SQLException e) {}
			 try {conn.close();}catch(SQLException e) {}
		 }
		return product;
	}
	
	public List<Product> getProductList(Product p) {
		List<Product> productList=new ArrayList<Product>();
		try {
			conn=DBconnect.getConnection();
			String SQL="select seq,title,category,price from register2 order by date desc";
			pstmt=conn.prepareStatement(SQL);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Product product=new Product();
				product.setSeq(rs.getInt("seq"));
				product.setTitle(rs.getString("title"));
				product.setCategory(rs.getString("category"));
				product.setPrice(rs.getString("price"));
				productList.add(product);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			 try {rs.close();}catch(SQLException e) {}
			 try {pstmt.close();}catch(SQLException e) {}
			 try {conn.close();}catch(SQLException e) {}
		 }
		return productList;
	}
}
