<%-- 
    Document   : AtualizarCliente
    Created on : 12/04/2015, 19:14:40
    Author     : pc
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                        <li><a id="cadastro" href="cadastraCliente.jsp">Cadastrar Cliente</a></li>
                        <li><a id="consulta" href="consultaCliente.jsp">Consultar Cliente</a></li>
                        <li><a id="ativo" href="atualizarCliente.jsp">Atualizar Cliente</a></li>
                        <li><a id="buscar" href="BuscarClientes">Lista de Clientes</a></li>

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
                        <li><a id="clientesAtivo" href="clientes.jsp">Clientes</a><br></li>
                        <li id="usuarioMenu"><a id="usuarios" href="AcessoUsuarios">Usuários</a></li>
                        <li><a id="contrato" href="Contrato_1.jsp">Contrato</a></li>
                        <li><a id="pagamento" href="Pagamento.jsp">Pagamento</a></li>
                        <li id="relMenu"><a id="relatorio" href="AcessoRelatorios">Relatórios</a></li>
                        <li><a id="logout" href="login.jsp">Logout</a></li>
                    </ul>
                </nav>
            </section><!-- fim .menu-opcoes -->
            <main>
                <fieldset>
                    <legend>Atualizar Dados do Cliente</legend>
                    <form action="AtualizarCliente" method="post">
                        <label>CPF Cliente </label><input type="text" id="cpfBusca" maxlength="14" name="CPFClientePesquisa">
                        <button type="submit" name="btPesquisa">Pesquisar </button>
                    </form>
                    <form id="atualizar" action="AtualizarCliente" method="POST">
                        <table class="atualizar">
                            <tr><td id="label">Id:</td><td id="input"><input required readonly="readonly" title="Não é possível alterar" type="text" name="id" value="${cliente.clienteId}"></td></tr>
                            <tr><td id="label">Nome:</td><td id="input"><input required type="text" name="nome" value="${cliente.nome}"></td></tr>
                            <tr><td id="label">RG:</td><td id="input"><input required type="text" name="rg" value="${cliente.rg}"></td></tr>
                            <tr><td id="label">CPF:</td><td id="input"><input required type="text" maxlength="14" id="cpf" name="cpf" value="${cliente.cpf}"></td></tr>
                            <tr><td id="label">CNH:</td><td id="input"><input required type="text" name="cnh" value="${cliente.cnh}"></td></tr>
                            <%-- aparece erro no input date mas funciona --%>
                            <tr><td id="label">Data Nasc.:</td><td id="input"><input type="date" name="dtNasc" value="<fmt:formatDate value="${cliente.dataNascimento}" type="date" pattern="yyyy-MM-dd"/>"></td></tr>
                            <tr><td id="label">Data Cadastro:</td><td id="input"><input required readonly="readonly" title="Não é possível alterar" name="dtCadastro" value="<fmt:formatDate value="${cliente.dataCadastro}" pattern="dd/MM/yyyy"/>"></td></tr>
                        </table>
                        <div class="submeter"><input type="submit" value="Atualizar"></div>
                    </form>
                </fieldset>
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
        <script src="http://code.jquery.com/jquery-1.10.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.inputmask.bundle.js"></script>
        <script type="text/javascript" src="js/mask.js"></script>
        <script type="text/javascript">
            
            if('<%=request.getSession().getAttribute("cargo")%>' == 0){
                document.getElementById("usuarioMenu").style.display = 'none';
                document.getElementById("relMenu").style.display = 'none';
                
            }
            if(${erro == 'true'}){
                alert("ERRO!\n\CPF NÃO encontrado.\n\Tente novamente.");
            }
            
        </script>
    </body>
</html>
