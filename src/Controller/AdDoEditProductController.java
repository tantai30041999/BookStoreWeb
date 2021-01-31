package Controller;

import BEAN.User;
import DAO.ProductDAO;
import Util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AdDoEditProductController")
public class AdDoEditProductController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //phân quyền
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user==null || user.getLevel()<2){
            response.getWriter().println("Ban khong co quyen truy cap");
            return;
        }

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("edit_id"));
        String name = request.getParameter("edit_Name");
        String img = request.getParameter("edit_img");
        String img_default = request.getParameter("img_default");
        String author = request.getParameter("edit_author");
        String desc = request.getParameter("edit_description");
        int price = Integer.parseInt(request.getParameter("edit_price"));
        int quantity = Integer.parseInt(request.getParameter("edit_quantity"));
        int sale = Integer.parseInt(request.getParameter("edit_sale"));
        int type = Integer.parseInt(request.getParameter("selectType"));

        if(img =="") {
            img = img_default;
        }
        try {
            if (ProductDAO.editProduct(id, name, type, img, author, quantity, desc, price, sale)) {
                response.sendRedirect(Util.fullPath("ProductController"));
            } else {
                response.getWriter().println("edit khong thanh cong");
            }

        } catch (RuntimeException e) {
            response.sendRedirect("bookhome/Error.jsp");
            return;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
