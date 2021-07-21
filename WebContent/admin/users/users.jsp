<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="col mt-4">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <a class="nav-link active" id="VideoEditing-tab" data-toggle="tab" href="#VideoEditing"
                role="tab" aria-controls="VideoEditing" aria-selected="true">User Editting</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" id="VideoList-tab" data-toggle="tab" href="#VideoList" role="tab"
                aria-controls="VideoList" aria-selected="false">User List</a>
        </li>

    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="VideoEditing" role="tabpanel"
            aria-labelledby="VideoEditing-tab">
            <form action="" method="post">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" name="username" id="username"
                                        aria-describedby="usernameHId" placeholder="Username" required="required">
                                    <small id="usernameHId" class="form-text text-muted">username is
                                        required</small>
                                </div>
                                <div class="form-group">
                                    <label for="fullname">Fullname</label>
                                    <input type="text" class="form-control" name="fullname" id="fullname"
                                        aria-describedby="fullnameHId" placeholder="Fullname" required="required">
                                    <small id="fullnameHId" class="form-text text-muted">fullname is
                                        required</small>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="password"
                                        id="password" aria-describedby="password" placeholder="Password" required="required">
                                    <small id="password" class="form-text text-muted">password is
                                        required</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        <button class="btn btn-primary">create</button>
                        <button class="btn btn-warning">Update</button>
                        <button class="btn btn-danger">Delete</button>
                        <button class="btn btn-info">Reset</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="tab-pane fade" id="VideoList" role="tabpanel" aria-labelledby="VideoList-tab">
            <table class="table table-stripe">
                <tr>
                    <td>Username ID</td>
                    <td>Fullname</td>
                    <td>Email</td>
                    <td>Role</td>
                    <td>&nbsp;Action</td>
                </tr>
                <tr>
                    <td>Tuannn</td>
                    <td>Nguyen Ngoc Tuan</td>
                    <td>tuannnph12028@fpt.edu.vn</td>
                    <td>Admin</td>
                    <td>
                        <a href=""><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                        <a href=""><i class="fa fa-trash" aria-hidden="true"></i>Delete</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>


