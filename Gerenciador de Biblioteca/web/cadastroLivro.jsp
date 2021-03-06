<%-- 
    Document   : cadastroLivro
    Created on : 14/05/2016, 20:00:52
    Author     : Amanda
--%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- As 3 meta tags acima *devem* vir em primeiro lugar dentro do `head`; qualquer outro conte�do deve vir *ap�s* essas tags -->
        <title>Cadastro de Livros</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
        <!-- ALERTA: Respond.js n�o funciona se voc� visualizar uma p�gina file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!--CSS do cadastroClie.jsp -->
        <link href="css/cadastroClie.css" rel="stylesheet">
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

    </head>
    <body>
        <!-- Cabe�alho da pagina com o menu, logo e nome -->
        <header id="cabecahome">          
            <!-- menu -->

            <!-- Menu -->


            <!-- Logo e Titulo -->
            <div class="row">

                <hgroup class="col-xs-6 col-xs-offset-6 col-md-6 col-md-offset-4">
                    <h1>Cadastro de Livros</h1> 
                    <h1></h1>
                </hgroup>

            </div>

        </header>

        <!-- Conteudo da Pagina -->

        <article id="Cadastro"  class="row">         
            <div class="col-xs-9 col-xs-offset-1 col-md-9 col-md-offset-1">
                <form class="form-horizontal"  action="LivroServlet" method="post"  enctype="multipart/form-data">

                    <div class="form-group">
                        <label for="txtISBN" class="col-xs-4 col-md-4 control-label">ISBN: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtISBN" maxlength="30" name="txtISBN" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtEdicao" class="col-xs-4 col-md-4 control-label">Edi��o: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtEdicao" maxlength="10" name="txtEdicao" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtTitulo" class="col-xs-4 col-md-4 control-label">T�tulo: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtTitulo"maxlength="100"  name="txtTitulo" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtAutor" class="col-xs-4 col-md-4 control-label">Autor: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtAutor" maxlength="60" name="txtAutor" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtEditora" class="col-xs-4 col-md-4 control-label">Editora: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtEditora" maxlength="40" name="txtEditora" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtResumo" class="col-xs-4 col-md-4 control-label">Resumo: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtResumo" maxlength="1000" name="txtResumo" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtPreco" class="col-xs-4 col-md-4 control-label">Pre�o: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtPreco" maxlength="10" name="txtPreco" required="">
                        </div>
                    </div>        

                    <div class="form-group">
                        <label for="txtAnoPublicacao" class="col-xs-4 col-md-4 control-label">Ano de Publica��o: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtAnoPublicacao" maxlength="4" name="txtAnoPublicacao" required="">
                        </div>
                    </div> 


                    <div class="form-group">
                        <label for="txtCategoria" class="col-xs-4 col-md-4 control-label">Categoria: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtCategoria" maxlength="60" name="txtCategoria">
                        </div>
                    </div> 


                    <div class="form-group">
                        <label for="txtTags" class="col-xs-4 col-md-4 control-label">Tags: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtTags" maxlength="200" name="txtTags" required="">
                        </div>
                    </div>                     

                    <div class="form-group">
                        <label for="txtObs" class="col-xs-4 col-md-4 control-label">Observa��es: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" class="form-control" id="txtObs" maxlength="250" name="txtObs" required="">
                        </div>
                    </div>

                    <input type="hidden" value="<%out.print(session.getAttribute("cod"));%>" maxlength="11" name="Matricula_Func">
                    
                  <!--   <div class="form-group" enctype="multipart/form-data">
                        <label for="txtImagem" class="col-xs-4 col-md-4 control-label">Carregar Imagem: </label>
                        <div class="col-xs-6 col-md-6">
                            <input type="file" name="txtImagem" id="txtImagem">
                        </div>
                    </div> -->
                  <div class="form-group">
                      <label for="txtImagem" class="col-xs-4 col-md-4 control-label">Carregar Imagem: </label>
                      <div class="col-xs-6 col-md-6">
                          <input type="file" name="filecover" required="" value="Upload"/></td>
                      </div>
                  </div>

                    <div class="form-group">
                        <div class="col-xs-6 col-xs-offset-4 col-md-6 col-md-offset-4">
                            <input type="submit" value="Enviar" name="btnEnviar" id="btnEnviarCC" class="btn btn-success btn-lg" />
                            <input type="reset" value="Limpar" name="btnLimpar" id="btnLimparCC" class="btn btn-danger btn-lg" />
                        </div>
                    </div>


                </form>
            </div>

        </article>
        <!-- aonde deveria ficar o rodap� se tivesse um --> 
        <footer class="footer">

        </footer>

        <!-- Script para fazer as mascaras dos campos  -->
        <script>
            jQuery(function ($) {

                $("#txtAnoPublicacao").mask("9999");

            });
        </script> 

        <!-- jQuery (obrigat�rio para plugins JavaScript do Bootstrap) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados se necess�rio -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
