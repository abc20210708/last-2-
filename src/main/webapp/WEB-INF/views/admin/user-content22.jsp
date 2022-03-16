<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="wrap">
    

    <div class="content-container">

        <h1 class="main-title">${user.id}님의 회원정보</h1>

        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">회원아이디</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="이름" name="writer"
                value="${user.id}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">회원 이름</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${user.name}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">주소</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${user.address}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">우편번호</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${user.postalCode}" disabled>  
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">휴대폰번호</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${user.phone}" disabled>  
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">성별</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${user.gender}" disabled>  
        </div>
        





        
    

            <div class="btn-group btn-group-lg custom-btn-group" role="group">
                <button id="mod-btn" type="button" class="btn btn-warning">수정</button>
                <button id="list-btn" type="button" class="btn btn-dark">목록</button>
            </div>
        </div>
    </div>   
</div>



<script>
   

    //수정버튼
    const $modBtn = document.getElementById('mod-btn');

    $modBtn.onclick = e => {
        location.href = '/user/modify?csNum=5';
    };
   

    //목록버튼
    const $listBtn = document.getElementById('list-btn');

    $listBtn.onclick = e => {
        location.href = '/admin/list';
    };
</script>