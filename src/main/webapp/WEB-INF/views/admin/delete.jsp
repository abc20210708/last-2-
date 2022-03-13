<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">



<head>
    <div class="wrap">

        <div class="btn-group btn-group-lg custom-btn-group" role="group">

            <h1>관리자 삭제</h1>

            <div class="write-container">

                <form action="/admin/delete" method="post" autocomplete="off">

                   

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">아이디</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="아이디를 입력해주세요"
                            name="adminId">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput2" class="form-label">비밀번호</label>
                        <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="비밀번호를 입력해주세요"
                            name="adminPw">
                    </div>
                   
            
                
                       
                  
                    
                    



                    <div class="d-grid gap-2">
                        <button class="btn btn-dark" type="submit">관리자 등록하기</button>
                        <button id="to-list" class="btn btn-warning" type="button">목록으로</button>
                    </div>

                    

                </form>

            </div>

        </div>

    </div>


    <script>
        //목록버튼 이벤트
        const $toList = document.getElementById('to-list');
        $toList.onclick = e => {
            location.href = '/project/list';
        };
    </script>