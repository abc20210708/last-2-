
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
                                <h1 class="mb-0 h5">${user.id}님의 회원정보</h1>                               
                            </div>
                            <div class="card-body">
                                <form action="/user/account" method="post">
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="exampleInputIcon4">회원아이디</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                               
                                            <input class="form-control" id="exampleInputIcon4" value="${user.id}" 
                                            name="id" type="text" disabled>
                                        </div>
                                    </div>
                                    
                                    <label for="exampleInputIcon4">회원 이름</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                          
                                        </div>
                                        <input class="form-control" id="exampleInputIcon4" value="${user.name}" 
                                        name="id" type="text" disabled>
                                    </div>
                                
                                        <!-- End of Form -->
                                        <!-- Form -->
                                        <label for="exampleInputIcon4">주소</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                    
                                        </div>
                                        <input class="form-control" id="exampleInputIcon4"  value="${user.address}" 
                                        name="id" type="text" disabled>
                                    </div>
                                
                                        
                                        <label for="exampleInputIcon4">우편번호</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                               
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4"  value="${user.postalCode}"
                                            name="id" type="text" disabled>
                                        </div>
                                    
                                        <label for="exampleInputIcon4">휴대폰번호</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4"  value="${user.phone}"
                                            name="id" type="text" disabled>
                                        </div>
                                    
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput2" class="form-label">성별</label>
                                            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                                                value="${user.gender}" disabled>  
                                        </div>
                                   
                               
                                        <div class="btn-group btn-group-lg custom-btn-group" role="group">
                                           
                                            <button id="list-btn" type="button" class="btn btn-dark">목록</button>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <script>

        //목록버튼
        const $listBtn = document.getElementById('list-btn');
    
        $listBtn.onclick = e => {
            location.href = '/admin/list';
        };
    </script>
</body>



</html>