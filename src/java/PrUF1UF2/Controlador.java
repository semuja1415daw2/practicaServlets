package PrUF1UF2;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/controlador"})
/**
 *Controlador principal, s'encarrega de controlar el registre i printar la taula del joc
 * 
 * @author sergi
 * @version 1.0
 * 
 */
public class Controlador extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "joc.jsp";
        Jugador jugador = new Jugador(request.getParameter("nom"));
        jugador.getTaulaJoc().add("1");
        jugador.getTaulaJoc().add("2");
        jugador.getTaulaJoc().add("2");
        jugador.getTaulaJoc().add("1");
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessio = request.getSession();
        String url = "error.jsp";

        if (request.getParameter("reg") != null) {
            if ((request.getParameter("nom").contains("@")) && (request.getParameter("password").length() >= 6)) {
                url = "regCorrect.jsp";

                String output = request.getParameter("nom") + ";" + request.getParameter("password");

                try {
                    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("usuaris.txt", true)));
                    out.println(output);
                    out.close();
                } catch (IOException e) {
                    url = "error.jsp";
                }

            } else {
                String message = "El accès no està permès";
                response.sendError(HttpServletResponse.SC_FORBIDDEN, message);
            }
        } else if (request.getParameter("log") != null) {

            if (!request.getParameter("password").equals("")
                    && request.getParameter("password") != null) {

                String line;
                try (
                        InputStream fis = new FileInputStream("usuaris.txt");
                        InputStreamReader isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
                        BufferedReader br = new BufferedReader(isr)) {
                    while ((line = br.readLine()) != null) {
                        String[] usrpasw = line.split(";");

                        if (request.getParameter("nom").equals(usrpasw[0]) && request.getParameter("password").equals(usrpasw[1])) {

                            Jugador jugador = new Jugador(request.getParameter("nom"));
                            jugador.getTaulaJoc().add("1");
                            jugador.getTaulaJoc().add("2");
                            jugador.getTaulaJoc().add("2");
                            jugador.getTaulaJoc().add("1");
                            sessio.setAttribute("nom", jugador);
                            url = "resultat.jsp";
                            System.out.println("Login correcte");
                            break;

                        }

                    }
                }

            }

        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }

}
