<%-- 
    Document   : lister_pompiers.jsp
    Created on : 15 mars 2024, 16:50:49
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pompier"%>
<%@page import="model.Caserne"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../header.jsp"%>
       
    <%
        ArrayList<Pompier> lesPompiers = (ArrayList)request.getAttribute("pLesPompiers");
    %>
            
   <section class="tables py-0">
        <div class="container-fluid">
            <div class="row gy-4">
              <div class="col-lg-6">
                <div class="card mb-0">
                  <div class="card-header">
                    <h3 class="h4 mb-0">Liste des pompiers</h3>
                  </div>
                  <div class="card-body pt-0">
                    <div class="table-responsive">         
         
                    <table  class="table mb-0 table-striped table-sm">  
                        <thead>
                            <tr>             
                                <th>id</th>
                                <th>nom</th>
                                <th>prenom</th>
                                <th>caserne</th>                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <%
                                for (Pompier p : lesPompiers)
                                {              
                                    out.println("<tr><td>");
                                    out.println(p.getId());
                                    out.println("</a></td>");

                                    out.println("<td><a href ='../ServletPompier/consulter?idPompier="+ p.getId()+ "'>");
                                    out.println(p.getNom());
                                    out.println("</td>");;

                                    out.println("<td>");
                                    out.println(p.getPrenom());
                                    out.println("</td>");
                           
                                    out.println("<td>");
                                    out.println(p.getUneCaserne().getNom());
                                    out.println("</td>");
                               
                                }
                            %>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>    
               
    <%@include file="../footer.jsp"%>
