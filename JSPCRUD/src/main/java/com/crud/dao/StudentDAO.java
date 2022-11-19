package com.crud.dao;

import com.crud.bean.StudentVO;
import com.crud.common.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String BOARD_INSERT = "insert into student (StudentName, Gender, StudentID, Class, Major, RC, Dorm, Team, BirthDate, Content, image) values (?,?,?,?,?,?,?,?,?,?,?)";
	private final String BOARD_UPDATE = "update student set StudentName=?, Gender=?, StudentID=?, Class=?, Major=?, RC=?, Dorm=?, Team=?, BirthDate=?, Content=?, image=? where StudentNum=?";
	private final String BOARD_DELETE = "delete from student where StudentNum=?";
	private final String BOARD_GET = "select * from student where StudentNum=?";
	private final String BOARD_LIST = "select * from student order by StudentNum desc";

	public int insertStudent(StudentVO vo) {
		System.out.println("===> JDBC로 insertBoard() 기능 처리");
		vo.printVoStatus();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, vo.getStudentName());
			stmt.setString(2, vo.getGender());
			stmt.setString(3, vo.getStudentID());
			stmt.setString(4, vo.getClas());
			stmt.setString(5, vo.getMajor());
			stmt.setString(6, vo.getRC());
			stmt.setString(7, vo.getDorm());
			stmt.setString(8, vo.getTeam());
			stmt.setString(9, vo.getBirthdate());
			stmt.setString(10, vo.getContent());
			stmt.setString(11, vo.getImage());

			System.out.println(vo.getStudentName() + "-" + vo.getStudentID() + "-" + vo.getClas() + "-" + vo.getMajor() + "-" + vo.getRC());
			stmt.executeUpdate();

			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 글 삭제
	public void deleteStudent(StudentVO vo) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, vo.getStudentNum());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int updateStudent(StudentVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getStudentName());
			stmt.setString(2, vo.getGender());
			stmt.setString(3, vo.getStudentID());
			stmt.setString(4, vo.getClas());
			stmt.setString(5, vo.getMajor());
			stmt.setString(6, vo.getRC());
			stmt.setString(7, vo.getDorm());
			stmt.setString(8, vo.getTeam());
			stmt.setString(9, vo.getBirthdate());
			stmt.setString(10, vo.getContent());
			stmt.setString(11, vo.getImage());
			stmt.setInt(12, vo.getStudentNum());
			
			
			System.out.println(vo.getStudentName() + "-" + vo.getStudentID() + "-" + vo.getClas() + "-" + vo.getMajor() + "-" + vo.getRC() + "-" + vo.getStudentNum());
			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}	
	
	public StudentVO getStudent(int seq) {
		StudentVO one = new StudentVO();
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setStudentNum(rs.getInt("StudentNum"));
				one.setStudentName(rs.getString("StudentName"));
				one.setGender(rs.getString("Gender"));
				one.setStudentID(rs.getString("StudentID"));
				one.setClas(rs.getString("Class"));
				one.setMajor(rs.getString("Major"));
				one.setRC(rs.getString("RC"));
				one.setDorm(rs.getString("Dorm"));
				one.setTeam(rs.getString("Team"));
				one.setBirthdate(rs.getString("BirthDate"));
				one.setContent(rs.getString("Content"));
				one.setImage(rs.getString("image"));
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
	}
	
	public List<StudentVO> getStudentList(){
		List<StudentVO> list = new ArrayList<StudentVO>();
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				StudentVO one = new StudentVO();
				one.setStudentNum(rs.getInt("StudentNum"));
				one.setStudentName(rs.getString("StudentName"));
				one.setGender(rs.getString("Gender"));
				one.setStudentID(rs.getString("StudentID"));
				one.setClas(rs.getString("Class"));
				one.setMajor(rs.getString("Major"));
				one.setRC(rs.getString("RC"));
				one.setDorm(rs.getString("Dorm"));
				one.setTeam(rs.getString("Team"));
				one.setBirthdate(rs.getString("BirthDate"));
				one.setContent(rs.getString("Content"));
				one.setImage(rs.getString("image"));
				list.add(one);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}

	public String getPhotoFilename (int studentNum) {
		String filename = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, studentNum);
			rs = stmt.executeQuery();
			if(rs.next()) {
				filename = rs.getString("image");
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("===> JDBC로 getPhotoFilename() 기능 처리");
		return filename;
	}
}
