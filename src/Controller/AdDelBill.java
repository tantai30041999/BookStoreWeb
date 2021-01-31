package Controller;

import BEAN.User;
import DAO.BillDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AdDelBill")
public class AdDelBill extends HttpServlet {
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

           int id = Integer.parseInt(request.getParameter("idBill"));
        try{
            BillDAO.remove(id);
        } catch (RuntimeException e){
            response.sendRedirect("bookhome/Error.jsp");
            return;
        }
           response.sendRedirect("AdBillController");



    }
}
