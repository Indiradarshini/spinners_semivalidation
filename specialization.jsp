<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, spring.orm.model.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Specialization</title>
<jsp:include page="scripts.jsp" />
<style type="text/css">
.error {
  border: 2px solid red;
}
</style>
    <script>
        // JavaScript function to display validation errors in a pop-up box
        function showErrors() {
            <c:if test="${not empty errors}">
                var errorMessages = "";
                <c:forEach items="${errors}" var="error">
                    errorMessages += '${error.defaultMessage}\n';
                </c:forEach>
                alert(errorMessages);
            </c:if>
        }
    </script>

</head>
<body onload="showErrors()" xmlns:c="http://java.sun.com/jsp/jstl/core">

	<jsp:include page="nav.jsp" />
	<%
		List<Specialization> slist = (List<Specialization>) request.getAttribute("slist");
	%>
	<div align="center">
		<div class="card-container " align="center">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Total Specializations</h5>
					<p class="card-text"><%=slist.size()%></p>
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Doctors Available</h5>
					<p class="card-text">15</p>
				</div>
			</div>
		</div>

		<div class="container">
			<h3 align="center">Specializations List</h3>

			<div class="col-md-12">
				<table class="table mt-4">
					<thead>
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Description</th>
							<th>Actions</th>
						</tr>
					</thead>

					<%
						for (Specialization s : slist) {
					%>
					<tbody>
						<tr>
							<td><%=s.getId()%></td>
							<td><%=s.getTitle()%></td>
							<td><%=s.getDescription()%></td>
							<td>
								<button class="btn btn-primary"
									onclick="getspec('<%=s.getId()%>')">Edit</button>
								<button class="btn btn-danger"
									onclick="deletespec('<%=s.getId()%>')">Delete</button>
							</td>
						</tr>
						<%
							}
						%>
						
					</tbody>
				</table>
			</div>
		</div>


	
	<center>
		<button type="button" class="btn btn-primary" id="show-btn"
			onclick="onclickspec()">Add Specialization</button>

			<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<div class="shadow p-3 mb-5 bg-white rounded" id="specializationForm" style="display: none;">
						<form:form method="POST" modelAttribute="Specialization" action="./newspec" id="specForm">
							<div class="form-group">

								<form:label path="id">ID:</form:label>
								<form:input path="id" />
								<form:errors path="id" cssClass="error" />
							</div>
							<div class="form-group">
								<form:label path="title">Title:</form:label>
								<form:input path="title" />
								<form:errors path="title" cssClass="error" />
							</div>
							<div class="form-group">
								<form:label path="description">Description:</form:label>
								<form:input path="description" />
								<form:errors path="description" cssClass="error" />
							</div>
							<button id="add-spec-btn" type="submit" class="btn btn-primary">Add</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
			


		</div>


	</center>



	</div>
	</div>
	</div>
	</div>


</body>

</html>