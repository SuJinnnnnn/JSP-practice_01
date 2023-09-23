package addrBook;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import register.registerDo;

public class addressDao {
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
			
			//입력된 데이터 저장 메소드
			public void insertAddr(addressDo ado) {
				System.out.println("insertAddr() 처리 시작!!");
				
				//디비 연결
				
				connect_cp();
				
				//SQL 처리 루틴
				String sql = "insert into addrbook(Name, Tel, Email, Hobby, Job)"
						+ " values (?,?,?,?,?)"; //시험에 나올수 잇음
				
				try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, ado.getName());
				pstmt.setString(2, ado.getTel());
				pstmt.setString(3, ado.getEmail());
				pstmt.setString(4, ado.getHobby());
				pstmt.setString(5, ado.getJob());
				
				//SQL문 실행 : 테이블에 변화가 있으면, update...
				pstmt.executeUpdate();
				
				System.out.println("insertAddr() 처리 완료!!");
				} catch (SQLException e) {
					//TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		//디비연결종료
				disConnect();
			}
			
				
			//입력된 전체 데이터 가져오는 메소드
			public ArrayList<addressDo> getAllAddr() {
					System.out.println("getAllAddr() 처리 시작!!");
					ArrayList<addressDo> aList = new ArrayList<>();
					
					connect_cp();
					//SQL문 처리
					String sql = "select * from addrbook";
					try {
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						while(rs.next()) {
							addressDo temp = new addressDo();
							temp.setNum(rs.getInt(1));
							temp.setName(rs.getString(2));
							temp.setTel(rs.getString(3));
							temp.setEmail(rs.getString(4));
							temp.setHobby(rs.getString(5));
							temp.setJob(rs.getString(6));
							
							aList.add(temp);
						}
						System.out.println("getAllAddr() 처리 완료!");
							
					} catch (SQLException e) {
						//TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					disConnect();
					return aList;
				}
			
			//전체 데이터에서 하나의 데이터 가져오기 (수정/삭제 위해서)
			public addressDo getOneAddr(int num) {
				System.out.println("getOneAddr() 처리 시작!!");
				addressDo ado = new addressDo();
				connect_cp();
				
				//SQL 처리
				String sql = "select * from addrbook where num?";
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, num);
					
				rs = pstmt.executeQuery();
				while(rs.next()) {
						ado.setNum(rs.getInt(1));
						ado.setName(rs.getString(2));
						ado.setTel(rs.getString(3));
						ado.setEmail(rs.getString(4));
						ado.setHobby(rs.getString(5));
						ado.setJob(rs.getString(6));	
				}
				System.out.println("getOneAddr() 처리 완료!!");
				
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				disConnect();
				return ado;
			}
}
	
				
