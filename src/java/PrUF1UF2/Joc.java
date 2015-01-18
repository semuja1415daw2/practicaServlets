
package PrUF1UF2;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/joc"})
/**
 *Controlador que s'encarrega de la lògica del joc
 * 
 * @author sergi
 * @version 1.0
 * 
 */
public class Joc extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "controlador";
        Object obj = request.getSession().getAttribute("id_anterior");
        String id_anterior = obj == null ? null : obj.toString();
        String id = request.getParameter("id");
        if (id_anterior == null) {
            request.getSession().setAttribute("id_anterior", id);
        } else {
            if (id_anterior.equals(id)) {
                System.out.println("Tens una parella " + id + ", " + id_anterior);
                Integer puntjoc = (Integer) request.getAttribute("puntjoc");
                if(puntjoc == null){
                   request.getSession().setAttribute("puntjoc", 1);
                }else{
                    puntjoc++;
                    request.getSession().setAttribute("puntjoc", puntjoc);
                }
            } else {
                System.out.println("No es una parella " + id + ", " + id_anterior);
            }
            request.getSession().removeAttribute("id_anterior");
        }
        response.sendRedirect("controlador");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
