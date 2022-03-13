<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- fontawesome css: https://fontawesome.com -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

<!-- bootstrap css-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!DOCTYPE html>
<html lang="ko">

<style>
    .write-container {
        width: 50%;
        margin: 200px auto 150px;
        font-size: 1.2em;
    }
</style>
</head>

<body>
<div class="wrap">


    <div class="write-container">

        <form action="/notice/write" method="post" autocomplete="off">

            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">관리자</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="관리자 ID 입력"
                       name="writer">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput2" class="form-label">공지 제목</label>
                <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">공지 내용</label>
                <textarea name="content" class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
            </div>

            <div class="d-grid gap-2">
                <button class="btn btn-dark" type="submit">작성하기</button>
                <button id="to-list" class="btn btn-warning" type="button">목록으로</button>
            </div>

        </form>

    </div>





</div>


<script>
    //목록버튼 이벤트
    const $toList = document.getElementById('to-list');
    $toList.onclick = e => {
        location.href = '/notice/list';
    };
</script>

</body>

</html>