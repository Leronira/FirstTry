<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 28/05/19
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Article Edition</title>
</head>
<body>
<form method="post" action="inscription">
    <fieldset>
        <p>Vous pouvez vous inscrire via ce formulaire.</p>

        <label for="author"> Author <span class="requis">*</span></label><br />
        <input type="text" id="author" name="author" value="<c:out value="${utilisateur.email}"/>" />
        <span class="erreur">${form.erreurs['author']}</span>
        <br />

        <label for="date"> Date <span class="requis">*</span></label><br />
        <input type="date" id="date" name="date" value="" size="20" maxlength="20" />
        <span class="erreur">${form.erreurs['date']}</span>
        <br />

        <label for="title"> Title <span class="requis">*</span></label><br />
        <input type="text" id="title" name="title" value="" size="20" maxlength="20" />
        <span class="erreur">${form.erreurs['title']}</span>
        <br />

        <label for="section">Section</label> <br />
        <input type="text" id="section" name="section" value="<c:out value="${utilisateur.nom}"/>" size="20" maxlength="20" />
        <span class="erreur">${form.erreurs['section']}</span>
        <br />

        Status :<br />
        <input type="radio" name="status" value="inedition" /> In edition
        <input type="radio" name="status" value="submitted" /> Submitted
        <input type="radio" name="status" value="accepted" /> Accepted
        <input type="radio" name="status" value="publised" /> Published
<br />
        Text <br />
        <textarea rows = "5" cols = "60" name = "text">

         </textarea><br>


        <input type="submit" value="Submit" class="sansLabel" />
        <br />

        <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
    </fieldset>
</form>
</body>
</html>
