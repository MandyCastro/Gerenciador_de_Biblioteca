<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- As 3 meta tags acima *devem* vir em primeiro lugar dentro do `head`; qualquer outro conte�do deve vir *ap�s* essas tags -->
        <title>Cadastro De Funcionario</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
        <!-- ALERTA: Respond.js n�o funciona se voc� visualizar uma p�gina file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        
        <!-- jquery para a mascara -->
        <script src = "js/jquery-1.12.3.min.js"  type = "text/javascript" ></script>
        <script src = "js/jquery-2.1.3.js"  type = "text/javascript" ></script>
        <script src = "js/jquery.maskedinput.js"  type = "text/javascript" ></script>
            
        
        <!-- Para funcionar no mozila -->
        <!-- cdn for modernizr, if you haven't included it already -->
        <script src="http://cdn.jsdelivr.net/webshim/1.12.4/extras/modernizr-custom.js"></script>
        <!-- polyfiller file to detect and load polyfills -->
        <script src="http://cdn.jsdelivr.net/webshim/1.12.4/polyfiller.js"></script>
        <script>
          webshims.setOptions('waitReady', false);
          webshims.setOptions('forms-ext', {types: 'date'});
          webshims.polyfill('forms forms-ext');
        </script>
        
        <style>
        body{
            background: url(../../../img/fundoTabela.jpg) no-repeat center top fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            /*overflow: hidden;*/
        }
        input#btnLimparCF, input#btnEnviarCF{
            width: 48%;
        }
           
    </style>

    </head>
    <body>
        <!-- Cabe�alho da pagina com o menu, logo e nome -->
        <header id="cabecahome">          
            <!-- menu -->
           
            <!-- Logo e Titulo -->
            <div class="row">

                <hgroup class="col-xs-9 col-xs-offset-3 col-md-9 col-md-offset-3">
                    <h1>Cadastro de Funcion�rio</h1>
                </hgroup>

            </div>

        </header>
        
        <!-- Conteudo da Pagina -->
        <%
            if(session.getAttribute("verificacao")==null){
            HttpSession cadfuncvolta = request.getSession();
            cadfuncvolta.setAttribute("txtNome","");
            cadfuncvolta.setAttribute("txtBairro","");
            cadfuncvolta.setAttribute("txtCEP","");
            cadfuncvolta.setAttribute("txtCidade","");
            cadfuncvolta.setAttribute("txtEstado","");
            cadfuncvolta.setAttribute("txtTelefone","");
            cadfuncvolta.setAttribute("txtEmail","");
            cadfuncvolta.setAttribute("txtEndereco","");
            cadfuncvolta.setAttribute("txtComplemento","");
                
            }
        %>

        <!-- Conteudo da Pagina -->

        <article id="Cadastro"  class="row">         
            <div class="col-xs-9 col-xs-offset-1 col-md9 col-md-offset-1">
                <form class="form-horizontal"  action="FuncionarioServlet" method="post">
   
                    <div class="form-group">
                        <label for="txtNome" class="col-xs-4 col-md-4 control-label">Nome Completo: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtNome" name="txtNome" required="" value="<%out.print(session.getAttribute("txtNome"));%>">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtDataNasc" class="col-xs-4 col-md-4 control-label">Data De Nascimento: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="date" class="form-control" id="txtDataNasc" name="txtDataNasc" required="">
                        </div>
                    </div> 
                    
                    <div class="form-group">
                        <label for="txtEndereco" class="col-xs-4 col-md-4 control-label">Endere�o: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtEndereco" name="txtEndereco" required="" value="<%out.print(session.getAttribute("txtEndereco"));%>">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtComplemento" class="col-xs-4 col-md-4 control-label">Complemento: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtComplemento" name="txtComplemento"value="<%out.print(session.getAttribute("txtComplemento"));%>">
                        </div>
                    </div> 
                    
                    <div class="form-group">
                        <label for="txtBairro" class="col-xs-4 col-md-4 control-label">Bairro: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtBairro" name="txtBairro" required="" value="<%out.print(session.getAttribute("txtBairro"));%>">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtCEP" class="col-xs-4 col-md-4 control-label">CEP: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtCEP" name="txtCEP" required="" value="<%out.print(session.getAttribute("txtCEP"));%>">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtCidade" class="col-xs-4 col-md-4 control-label">Cidade: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtCidade" name="txtCidade" required="" value="<%out.print(session.getAttribute("txtCidade"));%>">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtEstado" class="col-xs-4 col-md-4 control-label">Estado: </label>
                        <div class="col-xs-6 col-md-6">
                            <select class="form-control" id="txtEstado" name="txtEstado" required="" value="<%out.print(session.getAttribute("txtEstado"));%>">
                                <option value="ac">Acre</option> 
                                    <option value="al">Alagoas</option> 
                                    <option value="am">Amazonas</option> 
                                    <option value="ap">Amap�</option> 
                                    <option value="ba">Bahia</option> 
                                    <option value="ce">Cear�</option> 
                                    <option value="df">Distrito Federal</option> 
                                    <option value="es">Esp�rito Santo</option> 
                                    <option value="go">Goi�s</option> 
                                    <option value="ma">Maranh�o</option> 
                                    <option value="mt">Mato Grosso</option> 
                                    <option value="ms">Mato Grosso do Sul</option> 
                                    <option value="mg">Minas Gerais</option> 
                                    <option value="pa">Par�</option> 
                                    <option value="pb">Para�ba</option> 
                                    <option value="pr">Paran�</option> 
                                    <option value="pe">Pernambuco</option> 
                                    <option value="pi">Piau�</option> 
                                    <option value="rj">Rio de Janeiro</option> 
                                    <option value="rn">Rio Grande do Norte</option> 
                                    <option value="ro">Rond�nia</option> 
                                    <option value="rs">Rio Grande do Sul</option> 
                                    <option value="rr">Roraima</option> 
                                    <option value="sc">Santa Catarina</option> 
                                    <option value="se">Sergipe</option> 
                                    <option value="sp">S�o Paulo</option> 
                                    <option value="to">Tocantins</option>                          
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtTelefone" class="col-xs-4 col-md-4 control-label">Telefone: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtTelefone" name="txtTelefone" required="" value="<%out.print(session.getAttribute("txtTelefone"));%>">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtEmail" class="col-xs-4 col-md-4 control-label">Email: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="email" class="form-control" id="txtEmail" name="txtEmail" required="" value="<%out.print(session.getAttribute("txtEmail"));%>">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtLogin" class="col-xs-4 col-md-4 control-label">Login: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtLogin" name="txtLogin" required="">
                        </div>
                    </div>
                        
                        <%                    
                        if(request.getParameter("login") != null){
                    %> 
                        
                        
                    <div class="form-group">
                        <label class="col-xs-6 col-xs-offset-2 col-md-6 col-md-offset-2 control-label" style="color: red">Login j� existe!</label>                      
                    </div>
                    
                    <%
                        }
                    %>
                           
                    <div class="form-group">
                        <label for="txtSenha" class="col-xs-4 col-md-4 control-label">Senha: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="password" class="form-control" id="txtSenha" name="txtSenha" required="">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtTipo" class="col-xs-4 col-md-4 control-label">Tipo: </label>
                        <div class="col-xs-6 col-md-6">                            
                            <select class="form-control" id="txtTipo" name="txtTipo" required="">
                                <option value="2">Funcioario</option>
                                <option value="3">Administrador</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-6 col-xs-offset-4 col-md-6 col-md-offset-4">
                            <input type="submit" value="Enviar" name="btnEnviar" id="btnEnviarCF" class="btn btn-success btn-lg" />
                            <input type="reset" value="Limpar" name="btnLimpar" id="btnLimparCF" class="btn btn-danger btn-lg" />
                        </div>
                    </div>
                            
                      
                </form>
            </div>
            
        </article>
        <!-- aonde deveria ficar o rodap� se tivesse um --> 
        <footer class="footer">
            
        </footer>
        
        <!-- Script para fazer as mascaras dos campos --> 
        <script>
            jQuery(function($){
                $("#txtTelefone").mask("(99)9999-9999");
                $("#txtCPF").mask("999.999.999-99");
                $("#txtCEP").mask("99999-999");
                //$("#txtDataNasc").mask("99/99/9999");
            });
        </script>
        <!-- jQuery (obrigat�rio para plugins JavaScript do Bootstrap) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados se necess�rio -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
