<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="offset-3 col-6">
    <form action="ChangePassword" method="post">
        <div class="card  mt-5">
            <div class="card-header">
                <b>Change password</b>
            </div>
            <div class="card-body">
            <jsp:include page="/common/inform.jsp"></jsp:include>
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" name="username" id="username"
                                aria-describedby="usernameHId" placeholder="Username" value="${ username }" required="required">
                            <small id="usernameHId" class="form-text text-muted">username is
                                required</small>
                        </div>
                        <div class="form-group">
                            <label for="currentPassword">Current password</label>
                            <input type="password" class="form-control" name="currentPassword"
                                id="currentPassword" placeholder="Current password" required="required">
                        </div>
                        <div class="form-group">
                            <label for="password">New password</label>
                            <input type="password" class="form-control" name="password" id="password"
                                placeholder="new password" required="required">
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword">Confirm new password</label>
                            <input type="password" class="form-control" name="confirmPassword"
                                id="confirmPassword" placeholder="Confirm new password" required="required">
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer text-muted">
                <button class="btn btn-success">Change password</button>
            </div>
        </div>
    </form>
</div>