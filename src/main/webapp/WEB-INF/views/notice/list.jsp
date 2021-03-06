<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- fontawesome css: https://fontawesome.com -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

<!-- bootstrap css-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<!DOCTYPE html>
<html lang="ko">

<head>

    <style>
        .notice-list {
            width: 70%;
            margin: 0 auto;
        }

        .notice-list .articles {
            margin: 250px auto 100px;
            border-collapse: collapse;
            font-size: 1.5em;
            border-radius: 10px;
        }

        .notice-list .bottom-section {
            display: flex;
            margin-top: -50px;
        }

        .notice-list .bottom-section ul {
            flex: 9;
            display: flex;
            justify-content: center;
        }

        .pagination-custom a {
            color: #444 !important;
        }

        .pagination-custom li.active a {
            background: #333 !important;
            color: #fff !important;
        }

        .notice-list .bottom-section .btn-write {
            flex: 1;
            /* background: orange; */
            /* text-align: right;
            position: relative;
            top: -70px; */
        }

        .notice-list .amount {
            position: absolute;
            top: 21%;
            right: 16%;
        }

        .notice-list .amount a {
            width: 80px;
        }

        .notice-list .search {
            position: absolute;
            top: 21%;
            left: 16%;
        }

        .notice-list .search form {
            display: flex;
        }

        .notice-list .search form select {
            flex: 1;
            margin-right: 10px;
        }

        .notice-list .search form input {
            flex: 3;
        }

    </style>
</head>

<body>

<div class="wrap">


    <div class="notice-list">

        <!-- ????????? ?????? -->
        <section class="search">
            <form action="/notice/list" method="get">
                <select id="search-type" class="form-select" name="type">
                    <option value="title">??????</option>
                    <option value="content">??????</option>
                    <option value="writer">?????????</option>
                    <option value="titleContent">??????+??????</option>
                </select>

                <input class="form-control" type="text" name="keyword" value="${pageInfo.page.keyword}">

                <button class="btn btn-primary" type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </form>
        </section>

        <div class="amount">
            <a class="btn btn-secondary" href="/notice/list?amount=10">10</a>
            <a class="btn btn-secondary" href="/notice/list?amount=20">20</a>
            <a class="btn btn-secondary" href="/notice/list?amount=30">30</a>
        </div>

        <table class="table table-striped table-hover articles">
            <tr>
                <th>??????</th>
                <th>?????????</th>
                <th>??????</th>
                <th>????????????</th>
            </tr>

            <c:forEach var="a" items="${articles}">
                <tr>
                    <td>${a.bno}</td>
                    <td>${a.writer}</td>
                    <td>
                            ${a.title}
                        <c:if test="${a.newFlag}">
                            <span class="badge rounded-pill bg-danger">new</span>
                        </c:if>
                    </td>
                    <td>
                        <fmt:formatDate value="${a.regDate}" pattern="yyyy??? MM??? dd??? a hh:mm"/>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <div class="bottom-section">

            <ul class="pagination pagination-lg pagination-custom">

                <c:if test="${pageInfo.prev}">
                    <li class="page-item"><a class="page-link"
                                             href="/notice/list?pageNum=${pageInfo.beginPage - 1}&amount=${pageInfo.page.amount}&type=${pageInfo.page.type}&keyword=${pageInfo.page.keyword}">prev</a>
                    </li>
                </c:if>

                <c:forEach var="i" begin="${pageInfo.beginPage}" end="${pageInfo.endPage}" step="1">
                    <li class="page-item"><a class="page-link"
                                             href="/notice/list?pageNum=${i}&amount=${pageInfo.page.amount}&type=${pageInfo.page.type}&keyword=${pageInfo.page.keyword}">${i}</a>
                    </li>
                </c:forEach>

                <c:if test="${pageInfo.next}">
                    <li class="page-item"><a class="page-link"
                                             href="/notice/list?pageNum=${pageInfo.endPage + 1}&amount=${pageInfo.page.amount}&type=${pageInfo.page.type}&keyword=${pageInfo.page.keyword}">next</a>
                    </li>
                </c:if>
            </ul>

            <div class="btn-write">
                <a class="btn btn-outline-secondary btn-lg" href="/notice/write">?????????</a>
            </div>
        </div>
    </div>


</div>

<script>
    //???????????? ?????? ?????????
    const $table = document.querySelector(".articles");
    $table.addEventListener('click', e => {
        if (!e.target.matches('.articles td')) return;

        //console.log('tr ?????????! - ', e.target);

        let bn = e.target.parentElement.firstElementChild.textContent;
        console.log('?????????: ' + bn);

        location.href = '/notice/content?bno=' + bn
            + '&pageNum=${pageInfo.page.pageNum}'
            + '&amount=${pageInfo.page.amount}';
    });

    // ?????? ????????? ???????????? active????????? ????????????
    function appendPageActive() {
        //?????? ????????? ????????? ??????
        const curPage = '${pageInfo.page.pageNum}';
        // console.log('???????????????:', curPage);

        //ul??? li?????? ?????? ???????????? ??? ??????????????????(???????????????)???
        //?????? ????????? ????????? ????????? ?????? li?????? class="active" ??????
        const $ul = document.querySelector('.pagination');
        for (let $li of [...$ul.children]) {
            if ($li.textContent === curPage) {
                $li.classList.add('active');
                break;
            }
        }
    }

    //?????? ?????? ??? select option??? ??????
    function fixSearchOption() {
        const $select = document.getElementById('search-type');
        for (let $op of [...$select.children]) {
            if ($op.value === '${pageInfo.page.type}') {
                $op.setAttribute('selected', 'selected');
                break;
            }
        }
    }

    appendPageActive();
    fixSearchOption();

</script>

</body>

</html>