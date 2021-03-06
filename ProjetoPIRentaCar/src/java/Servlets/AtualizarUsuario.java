package Servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import Dao.UsuarioDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import projetorentacar.LogSistema;
import projetorentacar.Usuario;

/**
 *
 * @author pc
 */
@WebServlet(urlPatterns = {"/AtualizarUsuario"})
public class AtualizarUsuario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Usuario user = (Usuario) session.getAttribute("user");
        session.setAttribute("user", session.getAttribute("user"));

        String cpf = request.getParameter("cpf");
        UsuarioDAO u = new UsuarioDAO();
        Usuario usuario = u.buscarUsuarioByCpf(cpf);
        request.setAttribute("usuario", usuario);
        LogSistema log = new LogSistema();
//LOG BUSCA DE USUARIO
        log.cadastrarLog(4, user.getUsuarioId());
        request.getRequestDispatcher("/atualizarUsuario.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Usuario user = (Usuario) session.getAttribute("user");
        session.setAttribute("user", session.getAttribute("user"));

        if (request.getParameter("CPFUsuario") != null) {
            String cpf = request.getParameter("CPFUsuario");
            if (cpf.contains(".")) {
                cpf = cpf.replace(".", "");
            }
            if (cpf.contains("-")) {
                cpf = cpf.replace("-", "");
            }
            UsuarioDAO u = new UsuarioDAO();
            Usuario usuario = u.buscarUsuarioByCpf(cpf);

            LogSistema log = new LogSistema();
            //LOG BUSCA DE USUARIO
            log.cadastrarLog(4, user.getUsuarioId());

            if (usuario.getCpf() == null) {
                request.setAttribute("erro", true);
                request.getRequestDispatcher("/atualizarUsuario.jsp").forward(request, response);

            } else {
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("/atualizarUsuario.jsp").forward(request, response);
            }
        } else {
            String i = request.getParameter("id");
            int id = Integer.parseInt(i);
            String nome = request.getParameter("nome");
            String rg = request.getParameter("rg");
            String cpf = request.getParameter("cpf");
            if (cpf.contains(".")) {
                cpf = cpf.replace(".", "");
            }
            if (cpf.contains("-")) {
                cpf = cpf.replace("-", "");
            }
            String login = request.getParameter("login");
            String senha = request.getParameter("senha");
            String c = request.getParameter("cargo");
            int cargo = Integer.parseInt(c);
            String f = request.getParameter("filial");
            int filial = Integer.parseInt(f);
            boolean ativo = true;
            if (request.getParameter("ativo").equalsIgnoreCase("TRUE")) {
                ativo = true;
            } else if (request.getParameter("ativo").equalsIgnoreCase("FALSE")) {
                ativo = false;
            }
            Usuario usuario = new Usuario(id, nome, rg, cpf, login, senha, cargo, filial, ativo);
            UsuarioDAO u = new UsuarioDAO();
            List<Usuario> lista = u.buscarUsuarios();
            for (Usuario us : lista) {
                if (us.getLogin().equals(login)) {
                    request.setAttribute("erroLogin", true);
                    request.getRequestDispatcher("atualizarUsuario.jsp").forward(request, response);
                }
                if (us.getCpf().equalsIgnoreCase(cpf)) {
                    request.setAttribute("erroCpf", true);
                    request.getRequestDispatcher("atualizarUsuario.jsp").forward(request, response);
                }

            }
            u.updateUsuarioBD(usuario);
            Usuario userBD = u.buscarUsuarioByCpf(cpf);
            request.setAttribute("usuario", userBD);
            LogSistema log = new LogSistema();
            //LOG ALTERAÇÃO DE USUARIO
            log.cadastrarLog(3, user.getUsuarioId());
            RequestDispatcher rd = request.getRequestDispatcher("atualizarUsuarioSucesso.jsp");
            rd.forward(request, response);

        }

    }

}
