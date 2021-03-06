<%-- 
    Document   : clientes
    Created on : 18/04/2015, 22:26:22
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <link rel="shortcut icon" href="img/favicon.PNG" type="image/x-icon"/>
        <title>Cebolutions Rent a Car</title>
    </head>
    <body>

        <header>
            <div class="logo-empresa">
                <a href="home.jsp"></a>
            </div>
            <section class="menu">
                <nav class>
                    <ul>
                        <li><a id="cadastra" href="cadastraUsuario.jsp">Cadastrar Usuário</a></li>
                        <li><a id="consulta" href="atualizarUsuario.jsp">Atualizar Usuário</a></li>
                        <li><a id="excluir" href="excluirUsuario.jsp">Excluir Usuário</a></li>
                        <li><a id="buscar" href="BuscarUsuarios">Lista de Usuários</a></li>

                    </ul>
                </nav>
            </section>
            <div class="teste"></div>
        </header>

        <div class="container destaque">
            <section class="menu-opcoes">
                <h2>opções</h2>
                <nav class>
                    <ul>
                        <li><a id="inicio" href="home.jsp">Inicio</a></li>
                        <li><a id="clientes" href="clientes.jsp">Clientes</a><br></li>
                        <li><a id="usuariosAtivo" href="AcessoUsuarios">Usuários</a></li>
                        <li><a id="contrato" href="Contrato_1.jsp">Contrato</a></li>
                        <li><a id="pagamento" href="Pagamento.jsp">Pagamento</a></li>
                        <li><a id="relatorio" href="AcessoRelatorios">Relatórios</a></li>
                        <li><a id="logout" href="login.jsp">Logout</a></li>
                    </ul>
                </nav>
            </section><!-- fim .menu-opcoes -->
            <main>
                <div class="msgsucesso"><p>${erro}</p></div>
                <table class="icons">
                    <tr>
                        <td><a href="clientes.jsp"><img src="img/cliente.png" width="140" height="140" /></a></td>
                        <td><a href="AcessoUsuarios"><img src="img/userAtivo.png" width="140" height="140" /></a></td>
                        <td><a href="Contrato_1.jsp"><img src="img/car.png" width="140" height="140" /></a></td>
                    </tr>
                    <tr>
                        <td><a href="Pagamento.jsp"><img src="img/money.png" width="140" height="140" /></a></td>
                        <td><a href="AcessoRelatorios"><img src="img/relatorio.png" width="140" height="140" /></a></td>
                        <td><a href="login.jsp"><img src="img/exit.png" width="140" height="140" /></a></td>
                    </tr>
                </table>
            
            </main>
        </div><!-- fim .container .destaque -->

        <footer>
            <div class="container">
                <p>Cebolutions <span>Rent a Car</span></p>

                <ul class="social">
                    <li><a href="http://facebook.com/">Facebook</a></li>
                    <li><a href="http://twitter.com/">Twitter</a></li>
                    <li><a href="http://plus.google.com/">Google+</a></li>
                </ul>
            </div>
        </footer>
    </body>
</html>
