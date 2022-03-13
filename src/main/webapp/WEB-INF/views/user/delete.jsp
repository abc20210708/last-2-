<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 <!-- Section -->
 <section class="min-vh-100 mt-5 mb-5 d-flex bg-primary align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 col-lg-6 justify-content-center">
                <div class="card bg-primary shadow-soft border-light p-4">
                    <div class="card-header text-center pb-0">
                        <h2 class="mb-0 h5">회원 탈퇴</h2>                               
                    </div>
                    <div class="card-body">
                        <form action="/user/delete" method="post">
                            <!-- Form -->
                            <div class="form-group">
                                <label for="exampleInputIcon4">아이디(ID)</label>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><span class="fas fa-user"></span></span>
                                    </div>
                                    <input class="form-control" id="exampleInputIcon4" 
                                    name="id" placeholder="ID를 입력하세요." type="text">
                                </div>
                            </div>
                            <!-- End of Form -->
                            <div class="form-group">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleInputPassword7">Password</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                        </div>
                                        <input class="form-control" id="exampleInputPassword7"
                                         placeholder="Password" type="password" aria-label="Password" 
                                         name="pw"
                                         required>
                                    </div>

                                    <button type="submit" class="btn btn-block btn-primary">회원 탈퇴</button>
                                </div>
                                <!-- End of Form -->
                                <!-- Form -->