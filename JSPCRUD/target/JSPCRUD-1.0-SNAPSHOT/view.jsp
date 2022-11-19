<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.crud.dao.StudentDAO, com.crud.bean.StudentVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>학생 정보 - 한동 재학생 관리</title>
</head>
<body>
<%
    StudentDAO studentDAO = new StudentDAO();
    String id = request.getParameter("id");
    StudentVO u = studentDAO.getStudent(Integer.parseInt(id));
    request.setAttribute("vo", u);
%>
<h1>학생 정보 보기</h1>
<table id="edit">
    <tr>
        <td>이름:</td>
        <td><input type="text" name="studentName" value="<%= u.getStudentName()%>"/></td>
    </tr>
    <tr>
        <td>성별:</td>
        <td><input type="text" name="gender" value="<%= u.getGender()%>"/></td>
    </tr>
    <tr>
        <td>학번:</td>
        <td><input type="text" name="studentID" value="<%= u.getStudentID()%>"/></td>
    </tr>
    <tr>
        <td>학년:</td>
        <td><input type="text" name="clas" value="<%= u.getClas()%>"/></td>
    </tr>
    <tr>
        <td>전공:</td>
        <td><input type="text" name="major" value="<%= u.getMajor()%>"/></td>
    </tr>
    <tr>
        <td>소속 RC:</td>
        <td><input type="text" name="RC" value="<%= u.getRC()%>"/></td>
    </tr>
    <tr>
        <td>기숙사 거주 여부:</td>
        <td><input type="text" name="dorm" value="<%= u.getDorm()%>"/></td>
    </tr>
    <tr>
        <td>팀모임 필수 여부:</td>
        <td><input type="text" name="team" value="<%= u.getTeam()%>"/></td>
    </tr>
    <tr>
        <td>생년월일:</td>
        <td><input type="text" name="birthdate" value="<%= u.getBirthdate()%>"/></td>
    </tr>
    <tr>
        <td>자기 소개:</td>
        <td><input type="text" name="content" value="<%= u.getContent()%>"/></td>
    </tr>
    <tr>
        <td>사진:</td>
        <td><c:if test="${vo.getImage() ne ''}"><br/><img
                src="${pageContext.request.contextPath }/upload/${vo.getImage()}" width="205px" height="270px" class="photo"></c:if></td>
    </tr>
</table>
<button type="button" onclick="history.back()">뒤로 가기</button>
<button type="button" onclick="location.href='editform.jsp?id=${vo.getStudentNum()}'">수정 하기</button>
</body>
</html>
