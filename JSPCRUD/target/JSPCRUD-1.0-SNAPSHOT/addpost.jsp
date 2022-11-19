<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.crud.dao.StudentDAO" %>
<%@page import="com.crud.common.FileUpload" %>
<%@ page import="com.crud.bean.StudentVO" %>

<% request.setCharacterEncoding("utf-8");
    StudentDAO studentDAO = new StudentDAO();
    FileUpload upload = new FileUpload();
    StudentVO u = upload.uploadPhoto(request);

    int i = studentDAO.insertStudent(u);
    String msg = "데이터 추가 성공 !";
    if (i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
    alert('<%=msg%>');
    location.href = 'posts.jsp';
</script>