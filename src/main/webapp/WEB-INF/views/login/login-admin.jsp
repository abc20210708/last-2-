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
        <section class="min-vh-100 d-flex bg-primary align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 col-lg-6 justify-content-center">
                        <div class="card bg-primary shadow-soft border-light p-4">
                            <div class="card-header text-center pb-0">
                                <h2 class="h4">ISEC A/S 관리자 로그인</h2>  
                            </div>
                            <div class="card-body">
                                <form action="/admin/login" class="mt-4" method="get">
                                    <!-- Form -->
                              
                                    <div class="form-group">
                                        <label for="exampleInputIcon3">아이디(ID)</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-user"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon3" name="adminId" placeholder="아이디(ID)를 입력하세요" type="text" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <div class="form-group">
                                        <!-- Form -->
                                        <div class="form-group">
                                            <label for="exampleInputPassword6">비밀번호</label>
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                                </div>
                                                <input class="form-control" id="exampleInputPassword6" name="adminPw" placeholder="비밀번호를 입력하세요" type="password" required>
                                            </div>
                                        </div>
                                        <!-- End of Form -->
                                        <div class="d-block d-sm-flex justify-content-between align-items-center mb-4">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck5">
                                                <label class="form-check-label" for="defaultCheck5">
                                                  계정정보 기억하기
                                                </label>
                                            </div>
                                            <div><a href="#" class="small text-right">계정 정보를 잊어버리셨나요?</a></div>
                                        </div>
                                    </div>
                                    <button type="button" id="loginBtn" class="btn btn-block btn-primary">로그인</button>
                                  
                                   

                                </form>
                                <div class="mt-3 mb-4 text-center">
                                    <span class="font-weight-normal">or login with</span>
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
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <script>
       // 목록버튼
        const $loginBtn = document.getElementById('loginBtn');
    
        $loginBtn.onclick = e => {
            location.href = '/admin/list';
        };
    
        const msg = '${msg}';
        if (msg === 'NO_ID') {
            alert('회원가입된 아이디가 아닙니다!');
        } else if (msg === 'NO_PW') {
            alert('비밀번호가 틀렸습니다!');
        }

        </script>
</body>

</html>