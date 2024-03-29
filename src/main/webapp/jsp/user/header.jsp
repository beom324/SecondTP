<%@page import="dao.NewDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../css/loginstyle.css">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
   rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&family=Poppins:wght@400;600&display=swap"
   rel="stylesheet">
<!--구글폰트-->
<script src="https://kit.fontawesome.com/e72539902e.js"
   crossorigin="anonymous"></script>
<!--아이콘 사용-->
<script scr="https://code.jquery.com/jquery-3.7.1.min.js"></script>


<!-- StudyList CSS-->
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/css/npm_tinymce.11812fb7b9e7501ca2a8.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/css/MAIN.6826de4979280a75012d.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/css/_post_community.231518bb82c10cf9ee72.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/vendor/bulma-accordion.min.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/vendor/bulma-switch.min.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/vendor/bulma-tooltip.min.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/fontawesome/css/all.css">
<!-- StudyList CSS-->

<style>
@font-face {
   font-family: 'NanumBarunGothic' !important;
   font-style: normal !important;
   font-weight: 400 !important;
   src:
      url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot')
      !important;
   src:
      url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix')
      format('embedded-opentype'),
      url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff')
      format('woff'),
      url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf')
      format('truetype') !important;
}

/* 초기화 */
body, h1, h2, h3, div, p, ul, li, dl, dt, dd {
   margin: 0;
   padding: 0;
}

/*바디 기본폰트설정,구글 폰트설정함*/
#headerBody {
   background: white !important;
   font-family: 'Poppins', 'Noto Sans KR', sans-serif !important;
   font-size: 14px !important;
   line-height: 1.5 !important
}

#header {
   width: 1200px !important;
   height: 90px !important;
   margin: 0 auto !important;
   padding: 15px 10px 0px 5px !important;
   position: relative !important;
   display: flex !important;
   justify-content: space-between !important;
   align-items: center !important;
}

#header li {
   list-style: none !important;
}

#header a {
   text-decoration: none !important;
   color: #575656 !important;
}

#headerLogo img {
   width: 260px !important;
   height: 90px !important;
}

#headerMenuBar {
   width: 550px !important;
   height: 90px !important;
}

#headerGnb {
   height: 90px !important;
   display: flex !important;
   justify-content: space-between !important;
   font-size: 22px !important;
   padding-right: 20px !important;
}

#headerGnb li {
   align-self: center !important;
}

#headerTopMenu {
   padding-bottom: 13px !important;
   position: relative !important;
}

#headerTM {
   display: flex !important;
   justify-content: flex-end !important;
   font-size: 15px !important;
   padding: 0 5px 0 5px !important;
   width: 210px !important;
   height: 25px !important;
}

#headerSearchBar {
   border: 3px solid #928e8e !important;
   border-radius: 7px !important;
   height: 31px !important;
   resize: none !important;
}

/*돋보기아이콘*/
.fa-magnifying-glass {
   position: absolute !important;
   right: 9px !important; /*모니터 크기에 따라 위치 달라짐.필요하면 수치조정하기 */
   bottom: 19px !important;
   color: #928e8e !important;
}

#deleteBtn {
   float: right;
   margin-right: 20px;
}

.modal {
   display: none;
   overflow-y: auto !important;
   resize: none !important;
   height: 450px !important;
   position: absolute !important;
   top: 0 !important;
   right: 0 !important;
   bottom: 0 !important;
   left: auto !important;
   margin: 20px !important;
   width: 500px !important;
}

.modal-content {
	
   height: 300px !important;
   box-sizing: border-box !important;
   padding: 20px !important;
   margin: 20px !important;
   width: 450px !important;
}

.mt-3 {
   width: 95%;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>



<!-- 팝업 -->
<script>
   // 페이지 로딩 시 모달 숨기기
   document.addEventListener("DOMContentLoaded", function() {
      closeModal();
   });

   // 팝업 열기
   function openModal() {
      var modal = document.getElementById("myModal");
      modal.style.display = "block";
   }

   // 팝업 닫기
   function closeModal() {
      var modal = document.getElementById("myModal");
      modal.style.display = "none";
   }

   // 알람 이미지 클릭 시 팝업 열기
   // 버튼에 이벤트 리스너 추가
   document.getElementById("deleteBtn").addEventListener("click", function() {
      openModal();
   });
</script>

</head>
<body id="headerBody">

   <header id="header" class="header">
      <h1 id="headerLogo">
         <a href="homepage.do"><img src="../../image/logo.png"모두의자격증"></a>
      </h1>
      <nav id="headerMenuBar">
         <ul id="headerGnb">
            <li><a href="examSearch.do">자격증정보</a></li>
            <li><a href="studyList.do">스터디모집</a></li>
            <li><a href="myPageHome.do" class="hover">마이페이지</a></li>
            <li><a href="faq_page.do">고객센터</a></li>
         </ul>
      </nav>
      <div id="headerTopMenu">
         <ul id="headerTM">
            <c:choose>
               <c:when test="${id ne null}">
                  <li><a href="logout.do">로그아웃</a></li>
                  <span style="">&nbsp;|&nbsp;</span>
                  <c:if test="${id != admin }">
                  <li onclick="openModal()"><svg
                        xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                        fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                    <path
                           d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z" />
                  </svg></li>
                  </c:if>
                  <c:if test="${id == admin }">
                     <li><a href="/tp/jsp/admin/user.do">관리자홈</a></li>
                  </c:if>
               </c:when>
               <c:when test="${id eq null}">
                  <li><a href="login.do">로그인</a></li>
                  <span style="">&nbsp;|&nbsp;</span>
                  <li><a href="join.do">회원가입</a></li>
               </c:when>
            </c:choose>

         </ul>

      </div>

   </header>

    <div id="myModal" class="modal">
      <div class="modal-content">
         <span class="close" onclick="closeModal()">&times;</span>
         <!-- 팝업 내용 -->
         <c:if test="${newList ne null }">
         <c:forEach var="n" items="${newList }">
         <div class="row mt-3">
            <div class="col-md-6">
               <li id="title">
               <c:if test="${n.i_id eq 'none' }">
               <a href="studyPostDetail.do?s_id=${n.s_id }">
               ${n.n_id }&nbsp;&nbsp;${n.n_msg }
               </a>
               </c:if>
               </li>
            </div>
            <div class="col-md-6">
            <a href="deleteNew.do?n_id=${n.n_id }">
               <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                  fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16"
                  id="deleteBtn">
                                         <path
                     d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                                         <path
                     d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                                       </svg>
                                       </a>
            </div>
         </div>
         <br>
         </c:forEach>
         </c:if>
         <!-- 여기까지 모달 창 내용 -->
      </div>
   </div>

</body>
</html>