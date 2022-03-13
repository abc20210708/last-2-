
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>A/S WebSite</title>
    <!-- Fontawesome -->
    <link type="text/css" href="/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Pixel CSS -->
    <link type="text/css" href="/css/neumorphism.css" rel="stylesheet">

    <!-- Core -->
    <script src="/vendor/jquery/dist/jquery.min.js" defer></script>
    <script src="/vendor/popper.js/dist/umd/popper.min.js" defer></script>
    <script src="/vendor/bootstrap/dist/js/bootstrap.min.js" defer></script>
    <script src="/vendor/headroom.js/dist/headroom.min.js" defer></script>

    <!-- Neumorphism JS -->
    <script src="/js/neumorphism.js" defer></script>
</head>

<body>
    <main>
        <!-- Section -->
        <section class="min-vh-100 mt-5 mb-5 d-flex bg-primary align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 col-lg-6 justify-content-center">
                        <div class="card bg-primary shadow-soft border-light p-4">
                            <div class="card-header text-center pb-0">
                                <h2 class="mb-0 h5">회원가입</h2>                               
                            </div>
                            <div class="card-body">
                                <form action="/user/account" method="post">
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
                                        </div>
                                        <!-- End of Form -->
                                        <!-- Form -->
                                        <div class="form-group">
                                            <label for="exampleConfirmPassword7">Confirm Password</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                                </div>
                                                <input class="form-control" id="exampleConfirmPassword7" placeholder="Confirm password" 
                                                type="password" aria-label="Password" required>
                                            </div>
                                        </div>
                                        <!-- End of Form -->
                                        
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputIcon4">이름</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-signature"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4" name="name"
                                             placeholder="이름을 입력하세요." type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputIcon4">주소</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-home"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4" name="address" placeholder="주소를 입력하세요." type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputIcon4">우편번호</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4" name="postalCode" placeholder="우편번호를 입력하세요." type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputIcon4">연락처</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-mobile-alt"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4" name="phone" placeholder="연락처를 입력하세요." type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <fieldset>
                                            <legend class="h6">성별</legend>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="남자" checked>
                                                <label class="form-check-label" for="exampleRadios1">
                                                  남성
                                                </label>
                                              </div>
                                              <div class="form-check">
                                                <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="여자">
                                                <label class="form-check-label" for="exampleRadios2">
                                                  여성
                                                </label>
                                              </div>
                                            <!-- End of Radio -->
                                        </fieldset>
                                    </div>
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck6">
                                        <label class="form-check-label" for="defaultCheck6">
                                            <a href="#">이용약관 및 개인정보처리방침</a>에 동의합니다.
                                        </label>
                                    </div>
                                    <button type="submit" class="btn btn-block btn-primary">회원가입</button>
                                </form>
                                <div class="mt-3 mb-4 text-center">
                                    <span class="font-weight-normal">or</span>
                                </div>
                                <div class="btn-wrapper my-4 text-center">
                                    <button class="btn btn-primary btn-icon-only text-facebook mr-2" type="button" aria-label="facebook button" title="facebook button">
                                        <span aria-hidden="true" class="fab fa-facebook-f"></span>
                                    </button>
                                    <button class="btn btn-primary btn-icon-only text-twitter mr-2" type="button" aria-label="twitter button" title="twitter button">
                                        <span aria-hidden="true" class="fab fa-twitter"></span>
                                    </button>
                                    <button class="btn btn-primary btn-icon-only text-facebook" type="button" aria-label="github button" title="github button">
                                        <span aria-hidden="true" class="fab fa-github"></span>
                                    </button>
                                </div>
                                <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                                    <span class="font-weight-normal">
                                        이미 계정이 있으신가요?
                                        <a href="#" class="font-weight-bold">로그인</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</body>

</html>