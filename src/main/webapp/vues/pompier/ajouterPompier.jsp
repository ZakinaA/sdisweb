<%-- 
    Document   : ajouterPompier
    Created on : 18 mars 2024, 13:30:47
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Caserne"%>
<%@page import="form.FormPompier"%>
<%@include file="../header.jsp"%>
        
    <%
        FormPompier form = (FormPompier)request.getAttribute("form");
    %>
    <div class="col-lg-6">
        <div class="card">
            <div class="card-header">
                <h3 class="h4 mb-0">Nouveau pompier</h3>
            </div>
            <div class="card-body pt-0">               
            <form class="form-horizontal" action="ajouter" method="POST">   
                <div class="row">
                    <label class="col-sm-3 form-label">NOM : </label>
                    <div class="col-sm-9">
                        <input name= "nom" id="nom" size="50" maxlength="50" class="form-control" type="text">
                    </div>
                </div>
     
               <div class="row">
                    <label class="col-sm-3 form-label">PRENOM : : </label>
                    <div class="col-sm-9">
                        <input name= "prenom" id="prenom" size="50" maxlength="50" class="form-control" type="text">
                    </div>
                </div>
                
                <%-- Champ Liste des casernes --%>       
                <div class="row">
                <label for="caserne" class="col-sm-3 form-label">CASERNE : </label>
                    <div class="col-sm-9">
                        <select class="form-select mb-3" name="idPompier">
                        <%
                            ArrayList<Caserne> lesCasernes= (ArrayList)request.getAttribute("pLesCasernes");
                            for (int i=0; i<lesCasernes.size();i++){
                                Caserne c = lesCasernes.get(i);
                                out.println("<option value='" + c.getId()+"'>" + c.getNom()+"</option>" );
                            }
                        %>
                        </select>
                    </div>
                </div>   
                
                <div class="my-4"></div>
                    <div class="row">
                        <div class="col-sm-9 ms-auto">
                          <button class="btn btn-secondary" type="reset">Annuler</button>
                          <button class="btn btn-primary" type="submit">Enregistrer</button>
                        </div>
                    </div>

            </form>
            </div>
        </div>
    </div>
                        
    <%@include file="../footer.jsp"%>
