<%
    String customerName = (String) request.getParameter("customer_name");
%> 
<div class="card animate__animated animate__flipInY" style="border-radius: 15px;">
    <div class="card-body text-center">
        <div class="mt-3 mb-4">
            <img src="https://xsgames.co/randomusers/avatar.php?g=pixel"
                 class="rounded-circle img-fluid" style="width: 100px;" />
        </div>
        <h4 class="mb-2"><%=customerName%></h4>
        <p class="text-muted mb-4">@Programmer <span class="mx-2">|</span> <a
                href="#!">mdbootstrap.com</a></p>
        <div class="mb-4 pb-2">
            <button type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-primary btn-floating">
                <i class="fab fa-facebook-f fa-lg"></i>
            </button>
            <button type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-primary btn-floating">
                <i class="fab fa-twitter fa-lg"></i>
            </button>
            <button type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-primary btn-floating">
                <i class="fab fa-skype fa-lg"></i>
            </button>

        </div>
    </div>
</div>