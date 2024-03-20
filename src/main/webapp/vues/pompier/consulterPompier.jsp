<%-- 
    Document   : consulterPompier
    Created on : 18 mars 2024, 12:03:07
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pompier"%>
<%@include file="../header.jsp"%>

        <%
            Pompier p = (Pompier)request.getAttribute("pPompier");
        %>
           
        <section class="tables py-0">
          <div class="container-fluid">
            <div class="row gy-4">
              <div class="col-lg-6">
                <div class="card mb-0">
                  <div class="card-header">
                    <h3 class="h4 mb-0">Bienvenue <%  out.println(p.getPrenom());%>  <%  out.println(p.getNom());%></h3>
                  </div>
                  <div class="card-body pt-0">
                    <div class="table-responsive">                
                        <table class="tables py-0">
                            <tr>
                                <td>Numero Bip : </td><td>bip bip</td>
                            </tr>
                            <tr>
                                <td>Caserne : </td><td><%  out.println(p.getUneCaserne().getNom());%></td>
                            </tr>
                        </table>           
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>    
<%@include file="../footer.jsp"%>
   
