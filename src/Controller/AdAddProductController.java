package Controller;

import BEAN.User;
import DAO.InsertByExcelDAO;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/AdAddProductController")
public class AdAddProductController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //phân quyền
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user==null || user.getLevel()<2){
            response.getWriter().println("Ban khong co quyen truy cap");
            return;
        }
        try{
            InsertByExcelDAO.importExcel();
        }
        catch (RuntimeException e){
//            e.printStackTrace();
            System.out.println(e.getMessage());
            response.sendRedirect("bookhome/Error.jsp");
            return;
        }
        response.sendRedirect("ProductController");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
