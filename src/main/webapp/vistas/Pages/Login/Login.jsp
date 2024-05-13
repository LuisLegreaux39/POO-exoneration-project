<%-- 
    Document   : listar
    Created on : 4 may 2024, 10:13:16 p. m.
    Author     : PC
--%>
<%@page import="java.util.Iterator"%>
<%@page import="rtb.jsp.crud.mnv.model.Customer"%>
<%@page import="rtb.jsp.crud.mnv.dao.CustomerDao"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="../../Components/Links.jsp" />
    </head>
    <body>

        <section>
             <jsp:include page="../../Components/Header.jsp" />
        </section>
        <<section>
            <div class="container mt-5 text-center" style="margin-: 50px">
                <div class="mt-3 mb-4">
                    <img src="https://xsgames.co/randomusers/avatar.php?g=pixel"
                         class="rounded-circle img-fluid" style="width: 100px;" />
                </div>
                <form method="post" action="authentication?action=user.log.in">
                    <!-- Email input -->
                    <div data-mdb-input-init class="form-outline mb-4">
                        <input type="text" id="user-name" name="user-name" class="form-control" placeholder="Email address" />
                    </div>

                    <!-- Password input -->
                    <div data-mdb-input-init class="form-outline mb-4">
                        <input type="password" id="password" name="password" class="form-control"  placeholder="Password"/>
                    </div>

                    <!-- 2 column grid layout for inline styling -->
                    <div class="row mb-4">
                        <div class="col d-flex justify-content-center">
                            <!-- Checkbox -->
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                                <label class="form-check-label" for="form2Example31"> Remember me </label>
                            </div>
                        </div>
                    </div>

                    <!-- Submit button -->
                    <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>
                </form>
            </div>
        </section>
    </body>
</html>
