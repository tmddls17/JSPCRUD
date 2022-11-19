<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.crud.dao.StudentDAO, com.crud.bean.StudentVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<%
    StudentDAO studentDAO = new StudentDAO();
    String id = request.getParameter("id");
    StudentVO u = studentDAO.getStudent(Integer.parseInt(id));
    request.setAttribute("vo", u);
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post" enctype="multipart/form-data">
    <input type="hidden" name="studentNum" value="<%=u.getStudentNum() %>"/>
    <table>
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
            <td><input type="file" name="image" value="<%= u.getImage()%>"/>
                <c:if test="${vo.getImage() ne ''}" ><br/><img
                        src="${pageContext.request.contextPath }/upload/${vo.getImage()}" class="photo"></c:if></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Edit Post"/>
                <input type="button" value="Cancel" onclick="history.back()"/></td>
        </tr>
    </table>
</form>

</body>
</html>