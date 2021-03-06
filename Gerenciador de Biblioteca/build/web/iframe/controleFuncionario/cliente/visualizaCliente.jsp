<!DOCTYPE html>
<html lang="pt-br">
    <%@page import="br.com.Modelagem.Cliente, br.com.DAO.ClienteDAO,  java.util.List" %>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- As 3 meta tags acima *devem* vir em primeiro lugar dentro do `head`; qualquer outro conte�do deve vir *ap�s* essas tags -->
    <title>Tabela Cliente</title>

    <!-- Bootstrap -->
    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
    <!-- ALERTA: Respond.js n�o funciona se voc� visualizar uma p�gina file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
        body{
            background: url(../../../img/fundoTabela.jpg) no-repeat center top fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            /*overflow: hidden;*/
        }   
        
        td {
            white-space: nowrap;
        }
        
        th {
            white-space: nowrap;
        }
    </style>
 
  </head>
  <body>
        <div class="row">
            
                <form class="form-horizontal"  action="visualizaCliente.jsp" method="get">

                    <div class="form-inline">
                        <label for="slcTipoPesquisa" class="col-xs-2 control-label">Pesquisar pelo: </label>
                        <div class="col-xs-2 ">
                            <select class="form-control" id="slcTipoPesquisa" name="slcTipoPesquisa" style="width: 100%">
                                <option value="Nome">Nome</option>
                                <option value="CPF">Cpf</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-inline">
                        <div class="col-xs-3">
                            <input type="text" class="form-control" id="txtpesquisa" name="txtpesquisa" placeholder="Palavra Chave" style="width: 100%">
                        </div>
                    </div>

                    <div class="form-inline">
                        <div class="col-xs-1 ">
                            <input type="submit" value="Pesquisar" name="btnPesquisar" class="btn btn-default btn-sm" style="margin-top: 2px"/>
                        </div>
                    </div>

                </form>
            
        </div>
        <div class="row">
        </div>
  
    <%
        List<Cliente> clientes = null;
        ClienteDAO clidao = new ClienteDAO();
        String palavra = request.getParameter("txtpesquisa");
        if(palavra == null){ 
        clientes = clidao.getLista();
        }else{
        String tipo = request.getParameter("slcTipoPesquisa");
        clientes = clidao.getListaLike(palavra, tipo);
        }
    %>
    
        <div class="table-responsive">  
            <table class="table table-bordered">
               <!-- <tr><th colspan="18">Clientes</tr> -->
                <tr>
                    <th>C�digo</th><th>Nome</th><th>CPF</th><th>Bairro</th><th>CEP</th><th>Cidade</th><th>Estado</th><th>Telefone</th><th>Email</th><th>Login</th><th>Senha</th><th>Observacao</th><th>Data de Cadastro</th><th>Endereco</th><th>Status</th><th>Complemento</th><th>Data de Nascimento</th><th></th><th></th>
                </tr>
                <%
                    String sDestaque = "onMouseOver=\"this.style.backgroundColor='#ECECFF'; this.style.cursor='hand';\"";
                    sDestaque += "onMouseOut=\"this.style.backgroundColor='';\"";

                    int cor = 0;
                    for (Cliente cli : clientes) {
                        String sCor = "cor" + (cor % 2);
                        cor++;

                        // Fazer da linha da tabela, um link para exibi��o:
                        out.print("");

                        out.print("<tr id='" + sCor + "' " + sDestaque + ">");

                        out.print("<td>" + cli.getCodClie() + "</td>");
                        out.print("<td>" + cli.getNome() + "</td>");
                        out.print("<td>" + cli.getCpfClie() + "</td>");
                        out.print("<td>" + cli.getBairro() + "</td>");
                        out.print("<td>" + cli.getCep() + "</td>");
                        out.print("<td>" + cli.getCidade() + "</td>");
                        out.print("<td>" + cli.getEstado() + "</td>");
                        out.print("<td>" + cli.getTelefone() + "</td>");
                        out.print("<td>" + cli.getEmail() + "</td>");
                        out.print("<td>" + cli.getLogin() + "</td>");
                        out.print("<td>" + cli.getSenha() + "</td>");
                        out.print("<td>" + cli.getObsClie() + "</td>");
                        out.print("<td>" + cli.getDtCadastroClie() + "</td>");
                        out.print("<td>" + cli.getEnd() + "</td>");
                        out.print("<td>" + cli.getStatusClie() + "</td>");
                        out.print("<td>" + cli.getComplemento() + "</td>");
                        out.print("<td>" + cli.getDtNasc() + "</td>");

                        // Controle para manuten��o:
                        out.print("<td id='cmd'><a href='../../../alterarCliente.jsp?codClie=" + cli.getCodClie() + "'><img title='Alterar' src='../../../img/alterar.png' ></a></td>");
                        out.print("<td id='cmd'><a href='clienteExcluir.jsp?codClie=" + cli.getCodClie() + "'><img title='Excluir' src='../../../img/excluir.png'  /></a></td>");

                        out.print("</tr>");

                        //out.print("</a>");

                    }
                %>
            </table>
        </div>
        
    
    
    
    
    
    <!-- jQuery (obrigat�rio para plugins JavaScript do Bootstrap) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados se necess�rio -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>