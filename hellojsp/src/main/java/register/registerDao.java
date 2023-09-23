package register;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class registerDao {
	//MySQL 디비 연동 시작!!
		String id = "root";
		String password = "111111";
		String url = "jdbc:mysql://localhost:3306/jspdb_e?characterEncoding=utf-8";
		
		//디비 연동에 필요한 JDBC 클래스로 전
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		public void connect_cp() {
			
			try {
			//컨텍스트 객체 생성
			Context initctx = new InitialContext();
			//context.xml 접근
			Context envctx = (Context) initctx.lookup("java:/comp/env");
			//'jdbc/pool' 이름의 커넥션 풀에 접근
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			//커넥션 풀로부터 커넥션 하나 빌려오기
			conn = ds.getConnection();
			
			System.out.println("커넥션 풀로부터 디비 연결 성공 !! ");
			
			
			} catch(Exception e) {
				//TODO Auto-generated catch block
				e.printStackTrace();
			}
		}





		public void connect() {
			//MySQL 드라이버 로딩
			try {
				Class.forName("com.mysql.jdbc.Driver");
			//디비 연결
			conn = DriverManager.getConnection(url, id, password);
			System.out.print("디비 연결 완료");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public void disConnect() {
			if(conn !=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					//TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(pstmt !=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					//TODO Auto-generated catch block
					e.printStackTrace();
				
				}
			}
			if(rs !=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					//TODO Auto-generated catch block
					e.printStackTrace();
		}
	}
}
		public void insertRegister(registerDo rdo) {
			System.out.println("insertRegister() 처리 시작 !!");
			//connect();
			connect_cp();
			
			//디비 연동 코드
			//SQL문 완성
			String sql = "insert into register values (?,?)";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,  rdo.getName());
				pstmt.setString(2,  rdo.getEmail());
				//sql문 실행
				pstmt.executeUpdate();
				
				System.out.println("insertRegister() 처리 완료!!");
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			disConnect();
		}
		

		public ArrayList<registerDo> getAllRegister() {
			System.out.println("getAllRegister() 처리 시작!!");
			//connect();
			connect_cp();
			
			//디비 처리 코드!!
			ArrayList<registerDo> alist = new ArrayList<>();
			
			String sql = "select * from register";
			//sql문 완성
			try {
				pstmt = conn.prepareStatement(sql);
			//sql 실행
				rs = pstmt.executeQuery();
				while(rs.next()) {
					registerDo temp = new registerDo();
					temp.setName(rs.getString(1));
					temp.setName(rs.getString(2));
					alist.add(temp);
				}
				
			System.out.println("getAllRegister() 처리 완료!!");
			
				
			} catch (Exception e) {
				//toDo Auto-generated catch block
				e.printStackTrace();
			}
			disConnect();
			return alist;
		}
	}
		//JDBC 프로그램 순서로 진행
		//sql : insert in to 
		//try{
		//1. 드라이버 로딩
		//Class.forName("com.mysql.jdbc.Driver");
		//2. 디비 연결
		//conn = DriverManager.getConnection(url, id, password);
		//3. SQL 문 생성
		//String sql = "insert into register values(?,?)";
		//pstmt = conn.prepareStatement(sql);
		//pstmt.setString(1,  name); // 첫번째 ? 에 데이터 설정
		//pstmt.setString(2, email); //두번쨰 ? 와 데이터 설정S
		//4. SQL문 실행(디바 SQL 문 전달)
		//pstmt.executeUpdate();
		//5. 연결 종료
		//conn.close();
		
		//out.println("insert문 처리 종료");
		//}
		//catch(SQLException e ) {
		//	out.println(e);
		//}
		
		
