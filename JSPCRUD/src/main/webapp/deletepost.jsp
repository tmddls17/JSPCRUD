<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.crud.dao.StudentDAO, com.crud.bean.StudentVO" %>
<%@ page import="com.crud.dao.StudentDAO" %>
<%@page import="com.crud.common.FileUpload" %>

<%
    String studentNum = request.getParameter("id");
    if (studentNum != "") {
        int id = Integer.parseInt(studentNum);
        StudentDAO studentDAO = new StudentDAO();
        String filename = studentDAO.getPhotoFilename(id);
        if (filename != null)
            FileUpload.deleteFile(request, filename);

        StudentVO u = new StudentVO();
        u.setStudentNum(id);

        studentDAO.deleteStudent(u);
    }
    response.sendRedirect("posts.jsp");
%>