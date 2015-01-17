package PrUF1UF2;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author sergi
 */
@WebServlet(urlPatterns = {"/joc"})
public class Joc extends HttpServlet{
     private ArrayList<String> taulaJoc = new ArrayList<String>();
     
    public ArrayList<String> getTaulaJoc() {
        return taulaJoc;
    }
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "resultat.jsp";
                            System.out.println("entra post");
                            url = "resultat.jsp";
}

}
