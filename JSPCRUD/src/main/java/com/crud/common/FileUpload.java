package com.crud.common;

import com.crud.bean.StudentVO;
import com.crud.dao.StudentDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

public class FileUpload {

    public static void deleteFile(HttpServletRequest request, String filename) {
        String filePath = request.getServletContext().getRealPath("upload");

        File f = new File(filePath + "/" + filename);
        if (f.exists()) f.delete();
    }

    public StudentVO uploadPhoto(HttpServletRequest request) {
        String filename = "";
        int sizeLimit = 15 * 1024 * 1024;

        String realPath = request.getServletContext().getRealPath("upload");

        File dir = new File(realPath);
        if (!dir.exists()) dir.mkdirs();

        StudentVO one = null;
        MultipartRequest multipartRequest = null;
        try {
            multipartRequest = new MultipartRequest(request, realPath,
                    sizeLimit, "utf-8", new DefaultFileRenamePolicy());
            filename = multipartRequest.getFilesystemName("image");

            one = new StudentVO();
            String studentNum = multipartRequest.getParameter("studentNum");
            if (studentNum != null && !studentNum.equals(""))
                one.setStudentNum(Integer.parseInt(studentNum));
            one.setStudentName(multipartRequest.getParameter("studentName"));
            one.setGender(multipartRequest.getParameter("gender"));
            one.setStudentID(multipartRequest.getParameter("studentID"));
            one.setClas(multipartRequest.getParameter("clas"));
            one.setMajor(multipartRequest.getParameter("major"));
            one.setRC(multipartRequest.getParameter("RC"));
            one.setDorm(multipartRequest.getParameter("dorm"));
            one.setTeam(multipartRequest.getParameter("team"));
            one.setBirthdate(multipartRequest.getParameter("birthdate"));
            one.setContent(multipartRequest.getParameter("content"));

            if (studentNum != null && studentNum.equals("")) {
                StudentDAO dao = new StudentDAO();
                String oldfilename = dao.getPhotoFilename(Integer.parseInt(studentNum));
                if (filename != null && oldfilename != null)
                    FileUpload.deleteFile(request, oldfilename);
                else if (filename == null && oldfilename != null)
                    filename = oldfilename;
            }
            one.setImage(filename);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return one;
    }
}
