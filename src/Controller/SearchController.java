package Controller;

import BEAN.Sach;
import DAO.SearchDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String name = request.getParameter("name").trim();
        ArrayList<Sach> listSach = new ArrayList<Sach>();
        if(name!="") {
            try {
                listSach = SearchDAO.searchProductByName(name);

            } catch (RuntimeException e) {
                response.sendRedirect("bookhome/Error.jsp");
                return;
            }
        }
        request.setAttribute("listSach", listSach);
        request.getRequestDispatcher("bookhome/DisplaySearch.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
