<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<form id=create-student action="<c:url value="ai/etudiant/creation"/>" method="POST" class="form--horizontal">
    <div class="modal__mod__head">
    	<h3 class="modal__mod__head__title text-center">Ajout d'un étudiant</h3>
    </div>
    <div class="modal__mod--lg">
	    <label>NOM</label>
	    <input type="text" name="lastName" class="form--control" value="<c:out value='${ student.lastName }'/>" size="30" pattern="[A-Za-z ]{2,50}" placeholder="Nom" x-moz-errormessage="Veuillez entrer un nom de 2 à 50 caractères" required/>
	    <span class="form__error">${ studentForm.errors['lastName'] }</span>
	    <label>PRENOM</label>
	    <input type="text" name="firstName" class="form--control" value="<c:out value='${ student.firstName }'/>" size="30" pattern="[A-Za-z ]{2,50}" placeholder="Prenom" x-moz-errormessage="Veuillez entrer un prenom de 2 à 50 caractères" required/>
	    <span class="form__error">${ studentForm.errors['firstName'] }</span>
	    <label>ADRESSE MAIL</label>
	    <input type="text" name="emailAddress" class="form--control" value="<c:out value='${ student.emailAddress }'/>" size="30"  pattern="[a-zA-Z0-9@.-_]+@[a-zA-Z.]{2,20}.[a-zA-Z]{2,3}" placeholder="Adresse mail" x-moz-errormessage="Veuillez entrer une adresse mail correcte" required/>
	    <span class="form__error">${ studentForm.errors['"emailAddress"'] }</span>
	    <label>GROUPE</label>
	    <select name="group" class="form--control" required>
	       <option disabled="disabled" selected="selected">Sélectionnez un groupe</option>
	       <c:forEach items="${ groups }" var="group">
	           <option value="${ group.id }"<c:if test="${ student.group.id == group.id }"><c:out value="selected='selected'"/></c:if>><c:out value="${ group.name }"/></option>
	       </c:forEach>
	    </select>
	    <span class="form__error">${ studentForm.errors['group'] }</span>
	    <span class="form__error">${ studentForm.errors['student'] }</span> 
	</div>          
    <div class="form__control modal__mod__control">
        <button type="submit" class="btn btn--primary">AJOUTER</button>
        <button type="button" class="btn btn--default" onclick="removeModalWindow()">ANNULER</button>
    </div>
</form>