<%-- 
    Document   : devolucaoEmprestimo
    Created on : 19/05/2016, 22:36:36
    Author     : Erico
--%>

<html>
    <%@page import="br.com.DAO.EmprestimoDAO, br.com.DAO.ItemEmprestimoDAO,br.com.DAO.LivroDAO"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%-- Instanciar a DAO para acesso a regras que depensam do banco e CRUD --%>
        <%
        int emp = Integer.parseInt(request.getParameter("codEmprestimo"));
        // Instanciar DAO para CRUD:
        EmprestimoDAO empDAO = new EmprestimoDAO();
        // Inserir (enviando objeto que coletou dados pelo Java Beans:
        boolean empr = empDAO.devolucaoEmprestimo(emp);
        
        ItemEmprestimoDAO itemdao = new ItemEmprestimoDAO();
        
        int cod_Livro = itemdao.getCodLiv(Integer.parseInt(request.getParameter("codEmprestimo")));
        
        LivroDAO livrodao = new LivroDAO();
            
        livrodao.reservaLivro(0, cod_Livro);   
        
        if (!empr) {
            out.println ("Falha na Devolu��o do Livro!");
            out.close();
        }
        %>
        <jsp:forward page="visualizaEmprestimo.jsp"></jsp:forward>
    </body>
</html>