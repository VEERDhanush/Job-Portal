<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../shared/header.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h3 class="text-center">Professional Registration</h3>
                </div>
                <div class="card-body">
                    <form:form action="/professionals/register" method="post" modelAttribute="professional">
    <div class="mb-3">
        <label class="form-label">Full Name</label>
        <form:input path="name" class="form-control" required="true"/>
    </div>
    <div class="mb-3">
        <label class="form-label">Email</label>
        <form:input path="email" type="email" class="form-control" required="true"/>
    </div>
    <div class="mb-3">
        <label class="form-label">Password</label>
        <form:password path="password" class="form-control" required="true"/>
    </div>
    <div class="mb-3">
        <label class="form-label">Skills</label>
        <form:textarea path="skills" class="form-control" rows="3"/>
    </div>
    <div class="mb-3">
        <label class="form-label">Hourly Rate</label>
        <form:input path="hourlyRate" type="number" class="form-control"/>
    </div>
    <div class="mb-3">
        <label class="form-label">City</label>
        <form:input path="city" class="form-control"/>
    </div>
    <div class="text-center">
        <button type="submit" class="btn btn-primary">Register</button>
    </div>
</form:form>

                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="../shared/footer.jsp" %>