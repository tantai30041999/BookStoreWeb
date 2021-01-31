package Controller;

import UpLoadFile.UpLoadImg;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@WebServlet("/UploadImgController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadImgController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String img = request.getParameter("imgUpload");
        String fileName = null;
        for(Part part : request.getParts()) {
            fileName = UpLoadImg.extractFileName(part);
            fileName = new File(fileName).getAbsolutePath();
            part.write(UpLoadImg.getFolderUpload().getAbsolutePath()+File.separator+img+".jpg");
            System.out.println(UpLoadImg.getFolderUpload().getAbsolutePath()+File.separator+img+".jpg");
        }
        response.sendRedirect("AdProductController");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
