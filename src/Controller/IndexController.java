package Controller;

import BEAN.Sach;
import DAO.BillDAO;
import DAO.ProductDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/IndexController")
public class IndexController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {
            ArrayList<Sach> listSachBanChay = ProductDAO.getListTopSell();
            ArrayList<Sach> listSachMoiNhat = ProductDAO.getListNewestProduct();
            request.setAttribute("listSachBanChay",listSachBanChay);
            request.setAttribute("listSachMoiNhat",listSachMoiNhat);
        }
        catch (RuntimeException e){
            response.sendRedirect("bookhome/Error.jsp");
            return;
        }
        request.getRequestDispatcher("bookhome/index.jsp").forward(request,response);
    }
}
