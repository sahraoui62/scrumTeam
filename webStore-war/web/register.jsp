<%-- 
    Document   : register
    Created on : 2 mai 2013, 11:11:14
    Author     : duribreux
--%>

<%@ include file="includes/top.jsp" %>

<form class="row center_text" action="" method="GET" novalidate=""> 
    <ul class="centered six columns">
        <h6>- Create a new user -</h6>
        <input type="hidden" name="action" value="addUser" />
        <li class="prepend field">
            <span class="adjoined xnarrow">Pseudo</span>
            <input class="xwide text input" type="text" name="pseudo" required="required" placeholder="Pseudo"/>
        </li>
        <li class="prepend field">
            <span class="adjoined xnarrow">Pwd</span>
            <input class="xwide text input" type="password" name="password" required="required" placeholder="Password"/>
        </li>
        <li class="prepend field">
            <span class="adjoined xnarrow">Confirm Pwd</span>
            <input class="xwide text input" type="password" name="password2" required="required" placeholder="Password Validation"/>
        </li>
        Available only for tests... Should be only for admins
        <div class="field">
            <div  class="picker">
                <select name="userPermission">
                    <option disabled>User's permission</option>
                    <option value="0">User</option>
                    <option value="1">Admin</option>
                </select>
            </div>
        </div>
    </ul>
    
    <div class="centered five columns">
        <div class="medium default btn pretty"><input type="reset" value="Reset" /></div>
        <div class="medium default btn pretty"><input type="submit" value="Add user" /></div>
    </div>
</form>

    <%
    String password1 = request.getParameter("password");
    String password2 = request.getParameter("password2");

    if (password1!=null && password2!=null) {
        

       if (!password1.equals(password2)) {
    %>
         <%@ include file="errorpage.jsp" %>
    <%
       }
       
       else {
        %>
            <jsp:forward page="AddUserServlet" />
        <%
           
       }
    }
    %>

<%@ include file="includes/bottom.jsp" %>