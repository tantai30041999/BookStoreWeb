package Controller;

import BEAN.User;
import DAO.ProductDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet( "/AdDelProductController")
public class AdDelProductController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //phân quyền
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user==null || user.getLevel()<2){
            response.getWriter().println("Ban khong co quyen truy cap");
            return;
        }

       int maSach = Integer.parseInt(request.getParameter("maSach"));
        boolean success = false;
        try{
             success = ProductDAO.remove(maSach);
        } catch (RuntimeException e){
            response.sendRedirect("bookhome/Error.jsp");
            return;
        }
       if(success) {
           response.sendRedirect("ProductController");
       } else {
           response.getWriter().println("Xóa không thành công!");
       }
    }
}
