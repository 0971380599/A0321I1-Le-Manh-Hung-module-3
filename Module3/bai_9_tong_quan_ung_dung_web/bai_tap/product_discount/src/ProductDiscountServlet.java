import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountServlet", urlPatterns = "/productDiscount")
public class ProductDiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String listPrice = request.getParameter("listPrice");
        String discountPercent = request.getParameter("discountPercent");
        double discountAmount = Double.parseDouble(listPrice) * Double.parseDouble(discountPercent) * 0.01;
        double discountPrice = Double.parseDouble(listPrice) - discountAmount;
       request.setAttribute("discountAmount", discountAmount);
       request.setAttribute("discountPrice", discountPrice);
       request.getRequestDispatcher("displayDiscount.jsp").forward(request,response);
//        PrintWriter writer = response.getWriter();
//        writer.println("<html>");
//        writer.println("<h1> Discount Amount: " + discountAmount + "<h1>");
//        writer.println("<h1> Discount Price: " + discountPrice + "<h1>");
//        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
