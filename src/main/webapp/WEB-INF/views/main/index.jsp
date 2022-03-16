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
    <header class="header-global">
        <nav id="navbar-main" aria-label="Primary navigation" class="navbar navbar-main navbar-expand-lg navbar-theme-primary headroom navbar-light navbar-transparent navbar-theme-primary">
            <div class="container position-relative">
                <a class="navbar-brand shadow-soft py-2 px-3 rounded border border-light mr-lg-4" href="/main/index">
                    <img class="navbar-brand-dark" src="/img/italic(blue).png" alt="Logo light">
                    <img class="navbar-brand-light" src="/img/italic(blue).png" alt="Logo dark">
                </a>
                <div class="navbar-collapse collapse" id="navbar_global">
                    <div class="navbar-collapse-header">
                        <div class="row">
                            <div class="col-6 collapse-brand">
                                <a href="./index.html" class="navbar-brand shadow-soft py-2 px-3 rounded border border-light">
                                    <img src="" alt="Themesberg logo">
                                </a>
                            </div>
                            <div class="col-6 collapse-close">
                                <a href="#navbar_global" class="fas fa-times" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" title="close" aria-label="Toggle navigation"></a>
                            </div>
                        </div>
                    </div>
                    <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
                        <li class="nav-item dropdown">
                            <a href="#" id = "asBtn" class="nav-link" data-toggle="dropdown" >
                                <span class="nav-link-inner-text">A/S신청</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown mega-dropdown">
                            <a href="#" class="nav-link" data-toggle="dropdown" >
                                <span class="nav-link-inner-text">서비스안내</span>
                                <span class="fas fa-angle-down nav-link-arrow ml-2"></span>
                            </a>
                            <div class="dropdown-menu">
                                <div class="row">
                                    <div class="col-lg-6 inside-bg d-none d-lg-block">
                                        <div class="justify-content-center bg-primary">
                                            <div class="px-6 pb-5 pt-3">
                                                <img src="/img/20210825_caresolution.webp" alt="Pixel Components">
                                            </div>
                                            <div class="z-2 pb-4 text-center">
                                                <h4>
                                                    회원전용 서비스로 
                                                    <small class="text-muted">더 편리하게 이용해보세요.</small>
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col pl-0">
                                        <ul class="list-style-none">
                                            <li><a class="dropdown-item" href="/main/news">카드뉴스</a></li>
                                            <li><a class="dropdown-item" href="#">제품문제해결</a></li>
                                            <li><a class="dropdown-item" href="#">서비스뉴스</a></li>
                                        </ul>
                                    </div>
                                    <div class="col pl-0">
                                        <ul class="list-style-none">
                                            <li><a class="dropdown-item" href="#">요금/보증안내</a></li>
                                            <li><a class="dropdown-item" href="#">칭찬합니다</a></li>
                                            <li><a class="dropdown-item" href="/main/map">매장찾기</a></li>
                                        </ul>
                                    </div>
                                    <div class="col pl-0">
                                        <ul class="list-style-none">
                                            <li><a class="dropdown-item" href="#">공지사항</a></li>
                                            <li><a class="dropdown-item" href="#">자주찾는질문</a></li>
                                            <li><a class="dropdown-item" href="#">이메일문의</a> </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link" data-toggle="dropdown" >
                                <span class="nav-link-inner-text">고객지원</span>
                                <span class="fas fa-angle-down nav-link-arrow ml-2"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-lg">
                                <div class="col-auto px-0" data-dropdown-content>
                                    <div class="list-group list-group-flush">
                                        <a href="#" class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                            <span class="icon icon-sm icon-secondary"><span class="fas fa-file-alt"></span></span>
                                            <div class="ml-4">
                                                <span class="text-dark d-block">온라인 사용 설명서<span class="badge badge-sm badge-secondary ml-2">v1.0</span></span>
                                                <span class="small">제품에 필요한 사용설명서, 소프트웨어, 드라이버를 지원해드립니다.</span>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                            <span class="icon icon-sm icon-secondary"><span class="fas fa-microphone-alt"></span></span>
                                            <div class="ml-4">
                                                <span class="text-dark d-block">전화상담 예약</span>
                                                <span class="small">전문상담사가 친절히 안내해드립니다.</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="d-flex align-items-center">
                    <a href="/user/account" class="btn btn-primary text-secondary mr-3"><i class="fas fa-user-plus mr-2"></i> 회원가입</a>
                    
                    <a href="/user/login" class="btn btn-primary d-none d-md-inline-block"><i class="fas fa-sign-in-alt"></i> 로그인</a>
                    <a href="/admin/login" class="btn btn-primary d-none d-md-inline-block"><i class="fas fa-sign-in-alt"></i> 관리자로그인</a>
                    <button class="navbar-toggler ml-2" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <!-- Hero -->
        <div class="section section-header pb-7">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8 text-center">
                        <h1 class="display-2 mb-4">We are ISEC A/S</h1>
                        <p class="lead">직접 해결하는 방법을 알려드리고 서비스 및 제품에 대한 궁금증을 상담해드립니다.</p>
                        <p class="lead mb-5">제품별 사용설명서 및 관리에 대한 팁을 알려드리고 제품 고장시 출장/방문 예약부터 부품교체 및 하자 수리까지 도와드립니다.</p>
                        <a class="btn text-secondary btn-primary" href="#" id="asBtn2" ><span  class="fas fa-tools text-secondary mr-2"></span>A/S 신청</a></div>
                </div>
            </div>        
        </div>
        <!-- End of Hero section -->
        <section class="section section-lg pt-0">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="card bg-primary shadow-soft border-light p-4">
                            <div class="row">
                                <div class="col-12 col-lg-4 px-md-0 mb-4 mb-lg-0">
                                    <div class="card-body text-center bg-primary py-5">
                                        <div class="icon icon-shape shadow-inset border-light rounded-circle mb-3">
                                            <span class="far fa-eye"></span>
                                        </div>
                                        <!-- Heading -->
                                        <h2 class="h4 mr-2">
                                            제품자가진단
                                        </h2>
                                        <!-- Text -->
                                        <p class="mb-0">고객님께서 사용하시는 제품에 대한 문제를 빠르게 진단하고 해결할 수 있도록 도와드리겠습니다.</p>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 px-md-0 mb-4 mb-lg-0">
                                    <div class="card-body text-center bg-primary py-5">
                                        <div class="icon icon-shape shadow-inset border-light rounded-circle mb-3">
                                            <span class="fas fa-screwdriver"></span>
                                        </div>
                                        <!-- Heading -->
                                        <h2 class="h4 mr-2">
                                            출장서비스
                                        </h2>
                                        <!-- Text -->
                                        <p class="mb-0">자가 수리가 어려운 문제 혹은 부품 교체와 같은 문제는 전문 엔지니어가 고객님께 찾아가서 필요로 하시는 서비스를 제공해드립니다.</p>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 px-md-0">
                                    <div class="card-body text-center bg-primary py-5">
                                        <div class="icon icon-shape shadow-inset border-light rounded-circle mb-3">
                                            <span class="fas fa-dolly"></span>
                                        </div>
                                        <!-- Heading -->
                                        <h2 class="h4 mr-2">
                                            제품배송서비스
                                        </h2>
                                        <!-- Text -->
                                        <p class="mb-0">직접 수령이 어려우시거나 타지역 문의 고객님께는 수리된 제품을 배송해드리는 서비스를 제공하고 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section -->

        <section class="section section-lg pt-0">
            <div class="container">
                <div class="row align-items-center justify-content-around">
                    <div class="col-md-6 col-xl-6 mb-5">
                        <div class="card bg-primary shadow-soft border-light organic-radius p-3">
                            <img class="organic-radius img-fluid" src="/img/home_service_banner_02_211008.webp" alt="modern desk">
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-5 text-center text-md-left">
                        <h2 class="h2 mb-4">ISEC A/S는 고객을 위한 가치창조와 인간존중의 경영 및 서비스를 실현합니다.</h2>
                        <p class="lead">전 세계 고객의 문화적 특성과 생활 습관 등 고객연구를 기반으로 혁신적인 기술, 프리미엄 디자인을 결합한 시장 선도형 제품으로 글로벌 가전 시장을 선도하고 있으며,</p>
                        <p class="lead">기존 생활가전 뿐만 아니라, 스마트홈 등 미래산업에서도 리딩 브랜드로 자리매김 하고 있습니다.</p>
                        <img src="/img/signature.png" alt="signature" class="mt-4" width="150">
                    </div>
                </div>
            </div>
        </section>
        <!-- End of section -->

        <section class="section section-lg bg-primary pt-0">
                <div class="container">
                    <div class="row text-center justify-content-center">
                        <div class="col-md-8 mb-5">
                            <h2 class="font-weight-light">자주 찾는 <span class="font-weight-bold">질문</span></h2>
                            <p class="lead">무엇을 도와드릴까요?</p>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <!--Accordion-->
                            <div class="accordion shadow-soft rounded" id="accordionExample1">
                                <div class="card card-sm card-body bg-primary border-light mb-0">
                                    <a href="#panel-1" data-target="#panel-1" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-1">
                                        <span class="h6 mb-0 font-weight-bold">A/S 신청방법이 궁금해요.</span>
                                        <span class="icon"><span class="fas fa-plus"></span></span>
                                    </a>
                                    <div class="collapse" id="panel-1">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                                회원이시라면 자사 홈페이지의 상단 메뉴에 A/S신청 버튼으로 신청페이지에 오셔서 약식의 기재내용을 작성한 뒤 신청하실 수 있습니다.
                                                혹은, 전화예약으로도 신청하실 수 있습니다.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-sm card-body bg-primary border-light mb-0">
                                    <a href="#panel-2" data-target="#panel-2" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-1">
                                        <span class="h6 mb-0 font-weight-bold">냉장고의 냉기가 약해요</span>
                                        <span class="icon"><span class="fas fa-plus"></span></span>
                                    </a>
                                    <div class="collapse" id="panel-2">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                                김치냉장고는 냉기를 만든 다음 각각의 칸의 기능 설정에 알맞은 냉기를 공급합니다.
                                                고객이 원하는 대로 김치냉장고 칸의 온도를 다르게 설정해 어떤 칸은 덜 시원하게 또 어떤 칸은 더 차갑게 유지할 수 있습니다.
                                                또 보관 기능이 아닌 익힘 기능으로 사용하면 다소 냉기가 약하게 느껴질 수 있어요.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-sm card-body bg-primary border-light mb-0">
                                    <a href="#panel-3" data-target="#panel-3" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-3">
                                        <span class="h6 mb-0 font-weight-bold">건조기 배수 방법을 변경하고 싶어요</span>
                                        <span class="icon"><span class="fas fa-plus"></span></span>
                                    </a>
                                    <div class="collapse" id="panel-3">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                                건조기는 [건조] 코스를 사용하면 젖은 세탁물에서 빠져나온 물이 배수통에 모이게 됩니다.
                                                만약 배수통을 사용하고 싶지 않다면 물이 배수구를 통해 밖으로 흘러나가도록 건조기에 배수 호스를 연결해주세요.
                                                배수 호스를 연결하기 어려운 공간이나 방 안과 같은 실내에서는 배수통을 사용해주세요. </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-sm card-body bg-primary border-light">
                                    <a href="#panel-4" data-target="#panel-4" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="panel-4">
                                        <span class="h6 mb-0 font-weight-bold">세탁기 통 청소 방법이 어떻게 되나요</span>
                                        <span class="icon"><span class="fas fa-plus"></span></span>
                                    </a>
                                    <div class="collapse" id="panel-4">
                                        <div class="pt-3">
                                            <p class="mb-0">
                                                섬유 유연제는 제조사 권장량으로 사용해주세요. 세탁기를 30회 이상 사용하셨거나, TCL문구가 보이시면 통살균 코스를 사용해보세요. 염소계 표백제인 락스를 사용하여 통세척을 하신다면 소주 한 컵, 또는 종이컵 3분의 1 정도 ［54 밀리리터(ml)］를 세제 투입구에 넣습니다.
                                                액체 염소계 표백제의 경우 액체 세제 투입구에 넣으시고, 분말 염소계 표백제의 경우 본 세탁용 세제 투입구에 넣으세요. (꼬망스 세탁기의 경우 산소계 표백제 10ml를 넣으세요.)</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--End of Accordion-->
                        </div>
                    </div>
                </div>
            </section>

    </main>

    <footer class="d-flex pb-5 pt-6 pt-md-7 border-top border-light bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <p><strong>ISEC A/S</strong>에서는 오늘 하루도 고객의 불만과 불편을 듣고 해결하기 위해 최선을 다하고 있습니다. 최고의 품질과 서비스로 고객감동을 위한 실천을 최우선 자세로 삼고 있습니다. </p>
                    <ul class="d-flex list-unstyled mb-5 mb-lg-0">
                        <li class="mr-2">
                            <a href="#" target="_blank" class="btn btn-icon-only btn-pill btn-primary" aria-label="twitter social link"
                                data-toggle="tooltip" data-placement="top" title="Follow @themesberg on Twitter">
                                <span aria-hidden="true" class="fab fa-twitter"></span>
                            </a>
                        </li>
                        <li class="mr-2">
                            <a href="#" target="_blank" class="btn btn-icon-only btn-pill btn-primary" aria-label="facebook social link"
                            data-toggle="tooltip" data-placement="top" title="Like @themesberg on Facebook">
                                <span aria-hidden="true" class="fab fa-facebook"></span>
                            </a>
                        </li>
                        <li class="mr-2">
                            <a href="#" target="_blank" class="btn btn-icon-only btn-pill btn-primary" aria-label="github social link"
                            data-toggle="tooltip" data-placement="top" title="Open source projects">
                                <span aria-hidden="true" class="fab fa-github"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" target="_blank" class="btn btn-icon-only btn-pill btn-primary" aria-label="dribbble social link"
                            data-toggle="tooltip" data-placement="top" title="Follow us on Dribbble">
                                <span aria-hidden="true" class="fab fa-dribbble"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-6 col-lg-2 mb-5 mb-lg-0">
                    <h5>서비스안내</h5>
                    <ul class="footer-links list-unstyled mt-2">
                        <li class="mb-1"><a class="p-2" target="_blank" href="#">카드뉴스</a></li>
                        <li class="mb-1"><a class="p-2" target="_blank" href="#">제품문제해결</a></li>
                        <li class="mb-1"><a class="p-2" target="_blank" href="#">서비스뉴스</a></li>
                        <li><a class="p-2" target="_blank" href="#">요금보증문제</a></li>
                    </ul>
                </div>
                <div class="col-6 col-lg-2 mb-5 mb-lg-0">
                    <h5>고객지원</h5>
                    <ul class="footer-links list-unstyled mt-2">
                        <li class="mb-1"><a class="p-2" href="#" target="_blank">온라인 사용 설명서
                            <span class="badge badge-gray text-uppercase ml-2">v1.0</span></a>
                        </li>
                        <li>
                            <a class="p-2" href="#" target="_blank">전화상담 예약</a>
                        </li>
                    </ul>
                </div>
                <div class="col-12 col-lg-4 mb-5 mb-lg-0">
                    <h5>이메일문의</h5>
                    <p class="text-gray font-small mt-2">궁금한점이 있으시면 무엇이든 물어보세요.</p>
                    <form action="#">
                        <div class="form-row mb-2">
                            <div class="col-12">
                                <label class="h6 font-weight-normal d-none" for="exampleInputEmail3">Email address</label>
                                <input type="email" class="form-control mb-2" placeholder="example@company.com" name="email" aria-label="Subscribe form" id="exampleInputEmail3" required>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary btn-block" data-loading-text="Sending">
                                    <span>이메일 전송</span>
                                </button>
                            </div>
                        </div>
                    </form>
                    <p class="text-gray font-small m-0">평일 근무시간 상담사가 문의 내용을 확인 후 답변하므로 주말 및 연휴에 문의하신 건의 답변은 지연될 수 있습니다.</p>
                </div>
            </div>
            <hr class="my-5">
            <div class="row">
                <div class="col">
                    <a href="#" target="_blank" class="d-flex justify-content-center">
                        <img src="/img/italic(blue).png" height="25" class="mb-3" alt="Themesberg Logo">
                    </a>
                <div class="d-flex text-center justify-content-center align-items-center" role="contentinfo">
                    <p class="font-weight-normal font-small mb-0">Copyright © ISEC A/S
                        <span class="current-year">2021</span>. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script>
    //목록버튼
    const $asBtn = document.getElementById('asBtn');

    $asBtn.onclick = e => {
        location.href = '/user/login';
    };

    const $asBtn2 = document.getElementById('asBtn2');

    $asBtn2.onclick = e => {
        location.href = '/user/login';
    };
    </script>

</body>
</html>


