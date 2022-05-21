package Servelets;

import Clases.Pelicula;
import Negocios.PeliculaSessionBean;
import Negocios.PeliculaSessionBeanRemote;

import javax.net.ssl.HandshakeCompletedEvent;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import static Servelets.PeliServlet.getListaPeliculas;

@WebServlet(name = "ListarPel", value = "/ListarPel")
public class ListarPel extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pelicula> P = (List<Pelicula>) getListaPeliculas(request);
        request.setAttribute("LisPel", P);
        RequestDispatcher rd = request.getRequestDispatcher("MostrarPeliculas.jsp");
        rd.forward(request, response);
    }
}